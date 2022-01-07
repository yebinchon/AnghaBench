; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_avi_infoframe_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_avi_infoframe_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_avi_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %13 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %14 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i64, i64* @ENOSPC, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %231

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @memset(i8* %24, i32 0, i64 %25)
  %27 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %33 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %38 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %8, align 8
  %48 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %49 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 3
  %52 = shl i32 %51, 5
  %53 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %54 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 3
  %57 = or i32 %52, %56
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %61 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 15
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %23
  %66 = call i32 @BIT(i32 4)
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %23
  %72 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %73 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %78 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76, %71
  %82 = call i32 @BIT(i32 3)
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %89 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %94 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92, %87
  %98 = call i32 @BIT(i32 2)
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %105 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 3
  %108 = shl i32 %107, 6
  %109 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %110 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 3
  %113 = shl i32 %112, 4
  %114 = or i32 %108, %113
  %115 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %116 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 15
  %119 = or i32 %114, %118
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %123 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 7
  %126 = shl i32 %125, 4
  %127 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %128 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %127, i32 0, i32 13
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 3
  %131 = shl i32 %130, 2
  %132 = or i32 %126, %131
  %133 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %134 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 3
  %137 = or i32 %132, %136
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %141 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %140, i32 0, i32 19
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %103
  %145 = call i32 @BIT(i32 7)
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %103
  %151 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %152 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %151, i32 0, i32 15
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 127
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %158 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %157, i32 0, i32 16
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 3
  %161 = shl i32 %160, 6
  %162 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %163 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %162, i32 0, i32 17
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 3
  %166 = shl i32 %165, 4
  %167 = or i32 %161, %166
  %168 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %169 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %168, i32 0, i32 18
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 15
  %172 = or i32 %167, %171
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  store i32 %172, i32* %174, align 4
  %175 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %176 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 255
  %179 = load i32*, i32** %8, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %182 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 8
  %185 = and i32 %184, 255
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 6
  store i32 %185, i32* %187, align 4
  %188 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %189 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, 255
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 7
  store i32 %191, i32* %193, align 4
  %194 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %195 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = ashr i32 %196, 8
  %198 = and i32 %197, 255
  %199 = load i32*, i32** %8, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 8
  store i32 %198, i32* %200, align 4
  %201 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %202 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 255
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 9
  store i32 %204, i32* %206, align 4
  %207 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %208 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 8
  %211 = and i32 %210, 255
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 10
  store i32 %211, i32* %213, align 4
  %214 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %215 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, 255
  %218 = load i32*, i32** %8, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 11
  store i32 %217, i32* %219, align 4
  %220 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %221 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = ashr i32 %222, 8
  %224 = and i32 %223, 255
  %225 = load i32*, i32** %8, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 12
  store i32 %224, i32* %226, align 4
  %227 = load i8*, i8** %6, align 8
  %228 = load i64, i64* %9, align 8
  %229 = call i32 @hdmi_infoframe_set_checksum(i8* %227, i64 %228)
  %230 = load i64, i64* %9, align 8
  store i64 %230, i64* %4, align 8
  br label %231

231:                                              ; preds = %150, %20
  %232 = load i64, i64* %4, align 8
  ret i64 %232
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
