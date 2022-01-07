; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_setup_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_setup_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i8*, i8*, i32*, i8*, i32*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"rping_setup_buffers called on cb %p\0A\00", align 1
@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"recv_buf reg_mr failed\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"send_buf reg_mr failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rdma_buf malloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"rdma_buf reg_mr failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"start_buf malloc failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"start_buf reg_mr failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"allocated & registered buffers...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_setup_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_setup_buffers(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %5 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %6 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.rping_cb* %5)
  %7 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %8 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %11 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %10, i32 0, i32 10
  %12 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %13 = call i8* @ibv_reg_mr(i32 %9, i32* %11, i32 4, i32 %12)
  %14 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %15 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %17 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %2, align 4
  br label %163

24:                                               ; preds = %1
  %25 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %26 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %29 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %28, i32 0, i32 9
  %30 = call i8* @ibv_reg_mr(i32 %27, i32* %29, i32 4, i32 0)
  %31 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %32 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %34 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %4, align 4
  br label %157

41:                                               ; preds = %24
  %42 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %43 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @malloc(i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %48 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %50 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %152

58:                                               ; preds = %41
  %59 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %60 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %63 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %66 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %69 = load i32, i32* @IBV_ACCESS_REMOTE_READ, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @IBV_ACCESS_REMOTE_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @ibv_reg_mr(i32 %61, i32* %64, i32 %67, i32 %72)
  %74 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %75 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %77 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %58
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %4, align 4
  br label %147

84:                                               ; preds = %58
  %85 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %86 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %133, label %89

89:                                               ; preds = %84
  %90 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %91 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @malloc(i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %96 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %95, i32 0, i32 5
  store i32* %94, i32** %96, align 8
  %97 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %98 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %142

106:                                              ; preds = %89
  %107 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %108 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %111 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %114 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %117 = load i32, i32* @IBV_ACCESS_REMOTE_READ, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @IBV_ACCESS_REMOTE_WRITE, align 4
  %120 = or i32 %118, %119
  %121 = call i8* @ibv_reg_mr(i32 %109, i32* %112, i32 %115, i32 %120)
  %122 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %123 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %125 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %124, i32 0, i32 6
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %106
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @errno, align 4
  store i32 %131, i32* %4, align 4
  br label %137

132:                                              ; preds = %106
  br label %133

133:                                              ; preds = %132, %84
  %134 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %135 = call i32 @rping_setup_wr(%struct.rping_cb* %134)
  %136 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %163

137:                                              ; preds = %128
  %138 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %139 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @free(i32* %140)
  br label %142

142:                                              ; preds = %137, %101
  %143 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %144 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @ibv_dereg_mr(i8* %145)
  br label %147

147:                                              ; preds = %142, %80
  %148 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %149 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @free(i32* %150)
  br label %152

152:                                              ; preds = %147, %53
  %153 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %154 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @ibv_dereg_mr(i8* %155)
  br label %157

157:                                              ; preds = %152, %37
  %158 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %159 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @ibv_dereg_mr(i8* %160)
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %157, %133, %20
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @DEBUG_LOG(i8*, ...) #1

declare dso_local i8* @ibv_reg_mr(i32, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @rping_setup_wr(%struct.rping_cb*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ibv_dereg_mr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
