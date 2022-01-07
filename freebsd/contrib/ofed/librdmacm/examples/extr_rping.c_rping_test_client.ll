; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_test_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_test_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i32, i8*, i32, i8*, i64, i64, i32, i32, i32, i32, i32 }
%struct.ibv_send_wr = type { i32 }

@RDMA_READ_ADV = common dso_local global i32 0, align 4
@RPING_MSG_FMT = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"post send error %d\0A\00", align 1
@RDMA_WRITE_ADV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"wait for RDMA_WRITE_ADV state %d\0A\00", align 1
@RDMA_WRITE_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"wait for RDMA_WRITE_COMPLETE state %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data mismatch!\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ping data: %s\0A\00", align 1
@DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_test_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_test_client(%struct.rping_cb* %0) #0 {
  %2 = alloca %struct.rping_cb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_send_wr*, align 8
  %9 = alloca i8, align 1
  store %struct.rping_cb* %0, %struct.rping_cb** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 65, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %182, %1
  %11 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %12 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %18 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ true, %10 ], [ %20, %15 ]
  br i1 %22, label %23, label %185

23:                                               ; preds = %21
  %24 = load i32, i32* @RDMA_READ_ADV, align 4
  %25 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %26 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %28 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** @RPING_MSG_FMT, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @snprintf(i8* %29, i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  br label %39

39:                                               ; preds = %60, %23
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %42 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load i8, i8* %9, align 1
  %47 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %48 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %46, i8* %52, align 1
  %53 = load i8, i8* %9, align 1
  %54 = add i8 %53, 1
  store i8 %54, i8* %9, align 1
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sgt i32 %56, 122
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i8 65, i8* %9, align 1
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %66, 122
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 65, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %71 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %74 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %80 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %81 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %84 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @rping_format_send(%struct.rping_cb* %79, i8* %82, i32 %85)
  %87 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %88 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %91 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %90, i32 0, i32 8
  %92 = call i32 @ibv_post_send(i32 %89, i32* %91, %struct.ibv_send_wr** %8)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %69
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %185

99:                                               ; preds = %69
  %100 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %101 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %100, i32 0, i32 7
  %102 = call i32 @sem_wait(i32* %101)
  %103 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %104 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RDMA_WRITE_ADV, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32, i32* @stderr, align 4
  %110 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %111 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %7, align 4
  br label %185

114:                                              ; preds = %99
  %115 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %116 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %117 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %120 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @rping_format_send(%struct.rping_cb* %115, i8* %118, i32 %121)
  %123 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %124 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %127 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %126, i32 0, i32 8
  %128 = call i32 @ibv_post_send(i32 %125, i32* %127, %struct.ibv_send_wr** %8)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %114
  %132 = load i32, i32* @stderr, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %185

135:                                              ; preds = %114
  %136 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %137 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %136, i32 0, i32 7
  %138 = call i32 @sem_wait(i32* %137)
  %139 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %140 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RDMA_WRITE_COMPLETE, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %135
  %145 = load i32, i32* @stderr, align 4
  %146 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %147 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  store i32 -1, i32* %7, align 4
  br label %185

150:                                              ; preds = %135
  %151 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %152 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %157 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %160 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %163 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @memcmp(i8* %158, i8* %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = load i32, i32* @stderr, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %185

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %150
  %172 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %173 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %178 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %176, %171
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %3, align 4
  br label %10

185:                                              ; preds = %167, %144, %131, %108, %95, %21
  %186 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %187 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @DISCONNECTED, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %194

192:                                              ; preds = %185
  %193 = load i32, i32* %7, align 4
  br label %194

194:                                              ; preds = %192, %191
  %195 = phi i32 [ 0, %191 ], [ %193, %192 ]
  ret i32 %195
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rping_format_send(%struct.rping_cb*, i8*, i32) #1

declare dso_local i32 @ibv_post_send(i32, i32*, %struct.ibv_send_wr**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
