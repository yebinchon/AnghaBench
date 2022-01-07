; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux32_copyiniov.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux32_copyiniov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_iovec32 = type { i32, i32 }
%struct.iovec = type { i32, i32 }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux32_copyiniov(%struct.l_iovec32* %0, i32 %1, %struct.iovec** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l_iovec32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.l_iovec32, align 4
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.l_iovec32* %0, %struct.l_iovec32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.iovec** %2, %struct.iovec*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.iovec**, %struct.iovec*** %8, align 8
  store %struct.iovec* null, %struct.iovec** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UIO_MAXIOV, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @M_IOV, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = call %struct.iovec* @malloc(i32 %25, i32 %26, i32 %27)
  store %struct.iovec* %28, %struct.iovec** %11, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %62, %20
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.l_iovec32*, %struct.l_iovec32** %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.l_iovec32, %struct.l_iovec32* %34, i64 %36
  %38 = call i32 @copyin(%struct.l_iovec32* %37, %struct.l_iovec32* %10, i32 8)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.iovec*, %struct.iovec** %11, align 8
  %43 = load i32, i32* @M_IOV, align 4
  %44 = call i32 @free(%struct.iovec* %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %5, align 4
  br label %68

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.l_iovec32, %struct.l_iovec32* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTRIN(i32 %48)
  %50 = load %struct.iovec*, %struct.iovec** %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i64 %52
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 4
  %55 = getelementptr inbounds %struct.l_iovec32, %struct.l_iovec32* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iovec*, %struct.iovec** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i64 %59
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %29

65:                                               ; preds = %29
  %66 = load %struct.iovec*, %struct.iovec** %11, align 8
  %67 = load %struct.iovec**, %struct.iovec*** %8, align 8
  store %struct.iovec* %66, %struct.iovec** %67, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %41, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.iovec* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(%struct.l_iovec32*, %struct.l_iovec32*, i32) #1

declare dso_local i32 @free(%struct.iovec*, i32) #1

declare dso_local i32 @PTRIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
