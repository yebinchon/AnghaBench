; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsdp/extr_service.c_sdp_register_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsdp/extr_service.c_sdp_register_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64*, i64, i32 }
%struct.iovec = type { i32, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@SDP_SESSION_LOCAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SDP_LOCAL_MTU = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i64 0, align 8
@SDP_PDU_SERVICE_REGISTER_REQUEST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_register_service(i8* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca [4 x %struct.iovec], align 16
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %185

23:                                               ; preds = %6
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SDP_SESSION_LOCAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32, %29, %26, %23
  %40 = load i64, i64* @EINVAL, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  store i32 -1, i32* %7, align 4
  br label %185

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 32, %45
  %47 = load i32, i32* @SDP_LOCAL_MTU, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i64, i64* @EMSGSIZE, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  store i32 -1, i32* %7, align 4
  br label %185

54:                                               ; preds = %43
  %55 = load i32, i32* @SDP_PDU_SERVICE_REGISTER_REQUEST, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = call i8* @htons(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i8* @htons(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @htons(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = bitcast %struct.TYPE_5__* %16 to i8*
  %73 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 0
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 0
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %75, i32 0, i32 0
  store i32 24, i32* %76, align 16
  %77 = bitcast i32* %9 to i8*
  %78 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 1
  %79 = getelementptr inbounds %struct.iovec, %struct.iovec* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 1
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i32 0, i32 0
  store i32 4, i32* %81, align 16
  %82 = load i32*, i32** %10, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 2
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 2
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 0, i32 0
  store i32 4, i32* %87, align 16
  %88 = load i32*, i32** %11, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 3
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 3
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 16
  br label %95

95:                                               ; preds = %108, %54
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %15, i64 0, i64 0
  %100 = call i32 @writev(i32 %98, %struct.iovec* %99, i32 4)
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* @errno, align 8
  %106 = load i64, i64* @EINTR, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %95, label %110

110:                                              ; preds = %108
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* @errno, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  store i32 -1, i32* %7, align 4
  br label %185

117:                                              ; preds = %110
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %119 = call i32 @sdp_receive_error_pdu(%struct.TYPE_4__* %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 -1, i32* %7, align 4
  br label %185

123:                                              ; preds = %117
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %125, 32
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64, i64* @EIO, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  store i32 -1, i32* %7, align 4
  br label %185

131:                                              ; preds = %123
  %132 = load i32*, i32** %13, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %184

134:                                              ; preds = %131
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** %13, align 8
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = shl i32 %153, 8
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %160, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = shl i32 %166, 16
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = shl i32 %179, 24
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %180
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %134, %131
  store i32 0, i32* %7, align 4
  br label %185

185:                                              ; preds = %184, %127, %122, %113, %50, %39, %22
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @sdp_receive_error_pdu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
