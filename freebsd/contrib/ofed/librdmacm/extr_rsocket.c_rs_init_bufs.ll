; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_init_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_init_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i64, i32, i32, i64, i32, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i8*, i8*, i8*, i32, i8*, %struct.rs_iomap*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rs_iomap = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RS_MAX_CTRL_MSG = common dso_local global i32 0, align 4
@RS_QP_CTRL_SIZE = common dso_local global i32 0, align 4
@RS_SGL_SIZE = common dso_local global i32 0, align 4
@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@RS_MSG_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_init_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_init_bufs(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %8 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = call i8* @calloc(i64 %11, i32 1)
  %13 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 23
  store i8* %12, i8** %14, align 8
  %15 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 23
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @ERR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %239

22:                                               ; preds = %1
  %23 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %24 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %27 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RS_MAX_CTRL_MSG, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @RS_MAX_CTRL_MSG, align 4
  %33 = load i32, i32* @RS_QP_CTRL_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %31, %22
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @calloc(i64 %39, i32 1)
  %41 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %42 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 15
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %239

50:                                               ; preds = %38
  %51 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %52 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %51, i32 0, i32 18
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %55 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %54, i32 0, i32 15
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call %struct.TYPE_4__* @rdma_reg_msgs(i32 %53, i8* %56, i64 %57)
  %59 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 13
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %62 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %61, i32 0, i32 13
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %239

66:                                               ; preds = %50
  %67 = load i32, i32* @RS_SGL_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 1, %68
  %70 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %71 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = add i64 %69, %74
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i8* @malloc(i64 %76)
  %78 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %79 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %78, i32 0, i32 21
  store i8* %77, i8** %79, align 8
  %80 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %81 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %80, i32 0, i32 21
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %66
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = call i32 @ERR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %239

87:                                               ; preds = %66
  %88 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %89 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %88, i32 0, i32 18
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %92 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %91, i32 0, i32 21
  %93 = load i8*, i8** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i8* @rdma_reg_write(i32 %90, i8* %93, i64 %94)
  %96 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %97 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %96, i32 0, i32 22
  store i8* %95, i8** %97, align 8
  %98 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %99 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %98, i32 0, i32 22
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %87
  store i32 -1, i32* %2, align 4
  br label %239

103:                                              ; preds = %87
  %104 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %105 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %104, i32 0, i32 21
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @memset(i8* %106, i32 0, i64 %107)
  %109 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %110 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %109, i32 0, i32 21
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %113 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %112, i32 0, i32 19
  store i8* %111, i8** %113, align 8
  %114 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %115 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %103
  %119 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %120 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %119, i32 0, i32 19
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @RS_SGL_SIZE, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %121, i64 %123
  %125 = bitcast i8* %124 to %struct.rs_iomap*
  %126 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %127 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %126, i32 0, i32 20
  store %struct.rs_iomap* %125, %struct.rs_iomap** %127, align 8
  br label %128

128:                                              ; preds = %118, %103
  %129 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %130 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %4, align 8
  %132 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %133 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %140 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @RS_MSG_SIZE, align 8
  %144 = mul i64 %142, %143
  %145 = load i64, i64* %4, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %138, %128
  %148 = load i64, i64* %4, align 8
  %149 = call i8* @calloc(i64 %148, i32 1)
  %150 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %151 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %150, i32 0, i32 17
  store i8* %149, i8** %151, align 8
  %152 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %153 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %152, i32 0, i32 17
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %147
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = call i32 @ERR(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %239

159:                                              ; preds = %147
  %160 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %161 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %160, i32 0, i32 18
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %164 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %163, i32 0, i32 17
  %165 = load i8*, i8** %164, align 8
  %166 = load i64, i64* %4, align 8
  %167 = call i8* @rdma_reg_write(i32 %162, i8* %165, i64 %166)
  %168 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %169 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %168, i32 0, i32 16
  store i8* %167, i8** %169, align 8
  %170 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %171 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %170, i32 0, i32 16
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %159
  store i32 -1, i32* %2, align 4
  br label %239

175:                                              ; preds = %159
  %176 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %177 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %176, i32 0, i32 15
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %178 to i64
  %180 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %181 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %180, i32 0, i32 14
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i64 %179, i64* %184, align 8
  %185 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %186 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %185, i32 0, i32 14
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i64 %179, i64* %189, align 8
  %190 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %191 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %194 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %193, i32 0, i32 6
  store i64 %192, i64* %194, align 8
  %195 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %196 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %195, i32 0, i32 13
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %201 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %200, i32 0, i32 14
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  store i32 %199, i32* %204, align 8
  %205 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %206 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %205, i32 0, i32 14
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  store i32 %199, i32* %209, align 8
  %210 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %211 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = lshr i64 %212, 1
  %214 = trunc i64 %213 to i32
  %215 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %216 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  %217 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %218 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = lshr i64 %219, 1
  %221 = trunc i64 %220 to i32
  %222 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %223 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 4
  %224 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %225 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %224, i32 0, i32 11
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %228 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %227, i32 0, i32 10
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %226, %229
  %231 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %232 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %231, i32 0, i32 12
  store i64 %230, i64* %232, align 8
  %233 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %234 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = ashr i32 %235, 1
  %237 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %238 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %237, i32 0, i32 9
  store i32 %236, i32* %238, align 8
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %175, %174, %156, %102, %84, %65, %47, %19
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local %struct.TYPE_4__* @rdma_reg_msgs(i32, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @rdma_reg_write(i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
