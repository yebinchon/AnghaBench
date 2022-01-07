; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c_post_recv_wrapper_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c_post_recv_wrapper_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp_1_0 = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**)* }
%struct.ibv_recv_wr = type { %struct.ibv_recv_wr*, i32, i32, i32 }
%struct.ibv_recv_wr_1_0 = type { %struct.ibv_recv_wr_1_0*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_qp_1_0*, %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0**)* @post_recv_wrapper_1_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_recv_wrapper_1_0(%struct.ibv_qp_1_0* %0, %struct.ibv_recv_wr_1_0* %1, %struct.ibv_recv_wr_1_0** %2) #0 {
  %4 = alloca %struct.ibv_qp_1_0*, align 8
  %5 = alloca %struct.ibv_recv_wr_1_0*, align 8
  %6 = alloca %struct.ibv_recv_wr_1_0**, align 8
  %7 = alloca %struct.ibv_recv_wr_1_0*, align 8
  %8 = alloca %struct.ibv_recv_wr*, align 8
  %9 = alloca %struct.ibv_recv_wr*, align 8
  %10 = alloca %struct.ibv_recv_wr*, align 8
  %11 = alloca %struct.ibv_recv_wr*, align 8
  %12 = alloca i32, align 4
  store %struct.ibv_qp_1_0* %0, %struct.ibv_qp_1_0** %4, align 8
  store %struct.ibv_recv_wr_1_0* %1, %struct.ibv_recv_wr_1_0** %5, align 8
  store %struct.ibv_recv_wr_1_0** %2, %struct.ibv_recv_wr_1_0*** %6, align 8
  store %struct.ibv_recv_wr* null, %struct.ibv_recv_wr** %9, align 8
  store %struct.ibv_recv_wr* null, %struct.ibv_recv_wr** %10, align 8
  %13 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %5, align 8
  store %struct.ibv_recv_wr_1_0* %13, %struct.ibv_recv_wr_1_0** %7, align 8
  br label %14

14:                                               ; preds = %46, %3
  %15 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %16 = icmp ne %struct.ibv_recv_wr_1_0* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = call %struct.ibv_recv_wr* @alloca(i32 24)
  store %struct.ibv_recv_wr* %18, %struct.ibv_recv_wr** %8, align 8
  %19 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %20 = getelementptr inbounds %struct.ibv_recv_wr_1_0, %struct.ibv_recv_wr_1_0* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %23 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %25 = getelementptr inbounds %struct.ibv_recv_wr_1_0, %struct.ibv_recv_wr_1_0* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %28 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %30 = getelementptr inbounds %struct.ibv_recv_wr_1_0, %struct.ibv_recv_wr_1_0* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %33 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %35 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %34, i32 0, i32 0
  store %struct.ibv_recv_wr* null, %struct.ibv_recv_wr** %35, align 8
  %36 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %10, align 8
  %37 = icmp ne %struct.ibv_recv_wr* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %40 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %10, align 8
  %41 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %40, i32 0, i32 0
  store %struct.ibv_recv_wr* %39, %struct.ibv_recv_wr** %41, align 8
  br label %44

42:                                               ; preds = %17
  %43 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  store %struct.ibv_recv_wr* %43, %struct.ibv_recv_wr** %9, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  store %struct.ibv_recv_wr* %45, %struct.ibv_recv_wr** %10, align 8
  br label %46

46:                                               ; preds = %44
  %47 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %48 = getelementptr inbounds %struct.ibv_recv_wr_1_0, %struct.ibv_recv_wr_1_0* %47, i32 0, i32 0
  %49 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %48, align 8
  store %struct.ibv_recv_wr_1_0* %49, %struct.ibv_recv_wr_1_0** %7, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %4, align 8
  %52 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**)*, i32 (i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**)** %57, align 8
  %59 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %4, align 8
  %60 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  %63 = call i32 %58(i32 %61, %struct.ibv_recv_wr* %62, %struct.ibv_recv_wr** %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %50
  %67 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %9, align 8
  store %struct.ibv_recv_wr* %67, %struct.ibv_recv_wr** %8, align 8
  %68 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %5, align 8
  store %struct.ibv_recv_wr_1_0* %68, %struct.ibv_recv_wr_1_0** %7, align 8
  br label %69

69:                                               ; preds = %80, %66
  %70 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %71 = icmp ne %struct.ibv_recv_wr* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %74 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %11, align 8
  %75 = icmp eq %struct.ibv_recv_wr* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %78 = load %struct.ibv_recv_wr_1_0**, %struct.ibv_recv_wr_1_0*** %6, align 8
  store %struct.ibv_recv_wr_1_0* %77, %struct.ibv_recv_wr_1_0** %78, align 8
  br label %87

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %8, align 8
  %82 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %81, i32 0, i32 0
  %83 = load %struct.ibv_recv_wr*, %struct.ibv_recv_wr** %82, align 8
  store %struct.ibv_recv_wr* %83, %struct.ibv_recv_wr** %8, align 8
  %84 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %7, align 8
  %85 = getelementptr inbounds %struct.ibv_recv_wr_1_0, %struct.ibv_recv_wr_1_0* %84, i32 0, i32 0
  %86 = load %struct.ibv_recv_wr_1_0*, %struct.ibv_recv_wr_1_0** %85, align 8
  store %struct.ibv_recv_wr_1_0* %86, %struct.ibv_recv_wr_1_0** %7, align 8
  br label %69

87:                                               ; preds = %76, %69
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %12, align 4
  ret i32 %89
}

declare dso_local %struct.ibv_recv_wr* @alloca(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
