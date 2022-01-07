; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regional_free_all(%struct.regional* %0) #0 {
  %2 = alloca %struct.regional*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.regional* %0, %struct.regional** %2, align 8
  %5 = load %struct.regional*, %struct.regional** %2, align 8
  %6 = getelementptr inbounds %struct.regional, %struct.regional* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i8**
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.regional*, %struct.regional** %2, align 8
  %20 = getelementptr inbounds %struct.regional, %struct.regional* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %25, %18
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = bitcast i8* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %3, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.regional*, %struct.regional** %2, align 8
  %34 = call i32 @regional_init(%struct.regional* %33)
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @regional_init(%struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
