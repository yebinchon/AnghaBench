; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c_cset_set_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c_cset_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creation_set = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cset_set_format(%struct.creation_set* %0, i8* %1) #0 {
  %3 = alloca %struct.creation_set*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.creation_set* %0, %struct.creation_set** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @strdup(i8* %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.creation_set*, %struct.creation_set** %3, align 8
  %14 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.creation_set*, %struct.creation_set** %3, align 8
  %19 = getelementptr inbounds %struct.creation_set, %struct.creation_set* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
