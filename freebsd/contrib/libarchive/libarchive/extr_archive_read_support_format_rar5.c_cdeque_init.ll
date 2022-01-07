; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_cdeque_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_cdeque_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdeque = type { i32, i32* }

@CDE_PARAM = common dso_local global i32 0, align 4
@CDE_OK = common dso_local global i32 0, align 4
@CDE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdeque*, i32)* @cdeque_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdeque_init(%struct.cdeque* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdeque*, align 8
  %5 = alloca i32, align 4
  store %struct.cdeque* %0, %struct.cdeque** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %7 = icmp eq %struct.cdeque* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @CDE_PARAM, align 4
  store i32 %12, i32* %3, align 4
  br label %48

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %17 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %19 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %22 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @CDE_PARAM, align 4
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %13
  %29 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %30 = call i32 @cdeque_clear(%struct.cdeque* %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32* @malloc(i32 %34)
  %36 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %37 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.cdeque*, %struct.cdeque** %4, align 8
  %39 = getelementptr inbounds %struct.cdeque, %struct.cdeque* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @CDE_OK, align 4
  br label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @CDE_ALLOC, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %26, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @cdeque_clear(%struct.cdeque*) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
