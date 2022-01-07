; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.rs_svc = type { i32, i32*, i32*, %struct.TYPE_3__* }
%struct.rs_svc_msg = type { i32 }

@udp_svc_fds = common dso_local global %struct.TYPE_3__* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @udp_svc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @udp_svc_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca %struct.rs_svc_msg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rs_svc*
  store %struct.rs_svc* %9, %struct.rs_svc** %4, align 8
  %10 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %11 = call i32 @rs_svc_grow_sets(%struct.rs_svc* %10, i32 4)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %18 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @write_all(i32 %21, %struct.rs_svc_msg* %5, i32 4)
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %2, align 8
  br label %108

26:                                               ; preds = %1
  %27 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %28 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** @udp_svc_fds, align 8
  %30 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %31 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @udp_svc_fds, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @udp_svc_fds, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %102, %26
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %46 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @udp_svc_fds, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @udp_svc_fds, align 8
  %60 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %61 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = call i32 @poll(%struct.TYPE_3__* %59, i32 %63, i32 -1)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @udp_svc_fds, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %72 = call i32 @udp_svc_process_sock(%struct.rs_svc* %71)
  br label %73

73:                                               ; preds = %70, %58
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %98, %73
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %77 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @udp_svc_fds, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %90 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @udp_svc_process_rs(i32 %95)
  br label %97

97:                                               ; preds = %88, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %74

101:                                              ; preds = %74
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %104 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %105, 1
  br i1 %106, label %42, label %107

107:                                              ; preds = %102
  store i8* null, i8** %2, align 8
  br label %108

108:                                              ; preds = %107, %14
  %109 = load i8*, i8** %2, align 8
  ret i8* %109
}

declare dso_local i32 @rs_svc_grow_sets(%struct.rs_svc*, i32) #1

declare dso_local i32 @write_all(i32, %struct.rs_svc_msg*, i32) #1

declare dso_local i32 @poll(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @udp_svc_process_sock(%struct.rs_svc*) #1

declare dso_local i32 @udp_svc_process_rs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
