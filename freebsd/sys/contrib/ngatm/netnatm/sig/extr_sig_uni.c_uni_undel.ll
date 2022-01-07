; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_undel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_undel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32 }
%struct.sig = type opaque
%struct.sigqueue = type { i32 }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_undel(%struct.uni* %0, i32 (%struct.sig*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.uni*, align 8
  %5 = alloca i32 (%struct.sig*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sigqueue, align 4
  %8 = alloca %struct.sig*, align 8
  %9 = alloca %struct.sig*, align 8
  store %struct.uni* %0, %struct.uni** %4, align 8
  store i32 (%struct.sig*, i8*)* %1, i32 (%struct.sig*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.uni*, %struct.uni** %4, align 8
  %11 = getelementptr inbounds %struct.uni, %struct.uni* %10, i32 0, i32 1
  %12 = call i64 @TAILQ_EMPTY(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %45

15:                                               ; preds = %3
  %16 = call i32 @TAILQ_INIT(%struct.sigqueue* %7)
  %17 = load %struct.uni*, %struct.uni** %4, align 8
  %18 = getelementptr inbounds %struct.uni, %struct.uni* %17, i32 0, i32 1
  %19 = call %struct.sig* @TAILQ_FIRST(i32* %18)
  store %struct.sig* %19, %struct.sig** %8, align 8
  br label %20

20:                                               ; preds = %43, %15
  %21 = load %struct.sig*, %struct.sig** %8, align 8
  %22 = icmp ne %struct.sig* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.sig*, %struct.sig** %8, align 8
  %25 = load i32, i32* @link, align 4
  %26 = call %struct.sig* @TAILQ_NEXT(%struct.sig* %24, i32 %25)
  store %struct.sig* %26, %struct.sig** %9, align 8
  %27 = load i32 (%struct.sig*, i8*)*, i32 (%struct.sig*, i8*)** %5, align 8
  %28 = load %struct.sig*, %struct.sig** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 %27(%struct.sig* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load %struct.uni*, %struct.uni** %4, align 8
  %34 = getelementptr inbounds %struct.uni, %struct.uni* %33, i32 0, i32 1
  %35 = load %struct.sig*, %struct.sig** %8, align 8
  %36 = load i32, i32* @link, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %34, %struct.sig* %35, i32 %36)
  %38 = load %struct.uni*, %struct.uni** %4, align 8
  %39 = getelementptr inbounds %struct.uni, %struct.uni* %38, i32 0, i32 0
  %40 = load %struct.sig*, %struct.sig** %8, align 8
  %41 = load i32, i32* @link, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* %39, %struct.sig* %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %23
  %44 = load %struct.sig*, %struct.sig** %9, align 8
  store %struct.sig* %44, %struct.sig** %8, align 8
  br label %20

45:                                               ; preds = %14, %20
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_INIT(%struct.sigqueue*) #1

declare dso_local %struct.sig* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.sig* @TAILQ_NEXT(%struct.sig*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sig*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sig*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
