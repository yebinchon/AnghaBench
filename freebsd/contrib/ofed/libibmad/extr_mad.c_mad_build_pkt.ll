; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_build_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_build_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ib_mad_addr = type { i32, i32, i64, i64, i32 }

@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@IB_SMI_CLASS = common dso_local global i32 0, align 4
@IB_SA_RMPP_VERS_F = common dso_local global i32 0, align 4
@IB_SA_RMPP_TYPE_F = common dso_local global i32 0, align 4
@IB_SA_RMPP_RESP_F = common dso_local global i32 0, align 4
@IB_SA_RMPP_FLAGS_F = common dso_local global i32 0, align 4
@IB_SA_RMPP_STATUS_F = common dso_local global i32 0, align 4
@IB_SA_RMPP_D1_F = common dso_local global i32 0, align 4
@IB_SA_RMPP_D2_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mad_build_pkt(i8* %0, %struct.TYPE_13__* %1, %struct.TYPE_15__* %2, %struct.TYPE_14__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_mad_addr, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  %21 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = load i32, i32* @IB_SMI_CLASS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %5
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 255
  %35 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %30, %5
  %38 = phi i1 [ true, %5 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @umad_set_addr(i8* %43, i32 %46, i32 %49, i32 %52, i32 %55)
  br label %91

57:                                               ; preds = %37
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @umad_set_addr(i8* %61, i32 %64, i32 %67, i32 0, i32 0)
  br label %90

69:                                               ; preds = %57
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 65535
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @umad_set_addr(i8* %81, i32 %84, i32 0, i32 0, i32 0)
  br label %89

86:                                               ; preds = %75, %69
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @umad_set_addr(i8* %87, i32 65535, i32 0, i32 0, i32 0)
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %60
  br label %91

91:                                               ; preds = %90, %42
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %16, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %16, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memcpy(i32 %102, i32 %105, i32 16)
  %107 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %16, i32 0, i32 1
  store i32 255, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %16, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %16, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @umad_set_grh(i8* %110, %struct.ib_mad_addr* %16)
  br label %115

112:                                              ; preds = %96, %91
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @umad_set_grh(i8* %113, %struct.ib_mad_addr* null)
  br label %115

115:                                              ; preds = %112, %99
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  br label %124

124:                                              ; preds = %120, %119
  %125 = phi i32 [ 0, %119 ], [ %123, %120 ]
  %126 = call i32 @umad_set_pkey(i8* %116, i32 %125)
  %127 = load i8*, i8** %7, align 8
  %128 = call i32* @umad_get_mad(i8* %127)
  store i32* %128, i32** %13, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %137

134:                                              ; preds = %124
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  br label %137

137:                                              ; preds = %134, %133
  %138 = phi %struct.TYPE_16__* [ null, %133 ], [ %136, %134 ]
  %139 = load i8*, i8** %11, align 8
  %140 = call i32* @mad_encode(i32* %129, %struct.TYPE_13__* %130, %struct.TYPE_16__* %138, i8* %139)
  store i32* %140, i32** %12, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  store i32 -1, i32* %6, align 4
  br label %197

144:                                              ; preds = %137
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %189, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = icmp ne %struct.TYPE_14__* %148, null
  br i1 %149, label %150, label %189

150:                                              ; preds = %147
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* @IB_SA_RMPP_VERS_F, align 4
  %153 = call i32 @mad_set_field(i32* %151, i32 0, i32 %152, i32 1)
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* @IB_SA_RMPP_TYPE_F, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @mad_set_field(i32* %154, i32 0, i32 %155, i32 %158)
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* @IB_SA_RMPP_RESP_F, align 4
  %162 = call i32 @mad_set_field(i32* %160, i32 0, i32 %161, i32 63)
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* @IB_SA_RMPP_FLAGS_F, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @mad_set_field(i32* %163, i32 0, i32 %164, i32 %167)
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* @IB_SA_RMPP_STATUS_F, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @mad_set_field(i32* %169, i32 0, i32 %170, i32 %173)
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* @IB_SA_RMPP_D1_F, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @mad_set_field(i32* %175, i32 0, i32 %176, i32 %180)
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* @IB_SA_RMPP_D2_F, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @mad_set_field(i32* %182, i32 0, i32 %183, i32 %187)
  br label %189

189:                                              ; preds = %150, %147, %144
  %190 = load i32*, i32** %12, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %189, %143
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @umad_set_addr(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @umad_set_grh(i8*, %struct.ib_mad_addr*) #1

declare dso_local i32 @umad_set_pkey(i8*, i32) #1

declare dso_local i32* @umad_get_mad(i8*) #1

declare dso_local i32* @mad_encode(i32*, %struct.TYPE_13__*, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @mad_set_field(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
