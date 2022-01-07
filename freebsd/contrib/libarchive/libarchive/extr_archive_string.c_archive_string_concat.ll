; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_string_concat(%struct.archive_string* %0, %struct.archive_string* %1) #0 {
  %3 = alloca %struct.archive_string*, align 8
  %4 = alloca %struct.archive_string*, align 8
  store %struct.archive_string* %0, %struct.archive_string** %3, align 8
  store %struct.archive_string* %1, %struct.archive_string** %4, align 8
  %5 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  %6 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %7 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %10 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @archive_string_append(%struct.archive_string* %5, i32 %8, i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32* @archive_string_append(%struct.archive_string*, i32, i32) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
