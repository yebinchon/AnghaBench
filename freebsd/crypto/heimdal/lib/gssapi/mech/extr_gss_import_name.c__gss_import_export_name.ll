; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_import_name.c__gss_import_export_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_import_name.c__gss_import_export_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64 }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_10__ = type { i64 (i64*, %struct.TYPE_11__*, i32, i64*)*, i32 (i64*, i64*)* }
%struct._gss_name = type { i32 }

@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@GSS_C_NT_EXPORT_NAME = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_11__*, i64*)* @_gss_import_export_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_gss_import_export_name(i64* %0, %struct.TYPE_11__* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct._gss_name*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %16, align 4
  %24 = load i64*, i64** %5, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %7, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %29, i64* %4, align 8
  br label %239

30:                                               ; preds = %3
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %37, i64* %4, align 8
  br label %239

38:                                               ; preds = %30
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  switch i32 %42, label %45 [
    i32 1, label %43
    i32 2, label %44
  ]

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %38
  store i32 1, i32* %16, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %46, i64* %4, align 8
  br label %239

47:                                               ; preds = %44, %43
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %50, 2
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %55, i64* %4, align 8
  br label %239

56:                                               ; preds = %47
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %61, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %11, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, 2
  store i64 %71, i64* %10, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 6
  br i1 %76, label %77, label %79

77:                                               ; preds = %56
  %78 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %78, i64* %4, align 8
  br label %239

79:                                               ; preds = %56
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %11, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 128
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %79
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %17, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %108, %92
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %17, align 4
  %107 = icmp ne i32 %105, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 8
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %111, %115
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %11, align 8
  br label %104

124:                                              ; preds = %104
  br label %137

125:                                              ; preds = %79
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, -1
  store i64 %136, i64* %11, align 8
  br label %137

137:                                              ; preds = %125, %124
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %144, i64* %4, align 8
  br label %239

145:                                              ; preds = %137
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store i8* %146, i8** %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, 4
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %153, i64* %4, align 8
  br label %239

154:                                              ; preds = %145
  %155 = load i64, i64* %11, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %9, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %10, align 8
  %160 = sub i64 %159, %158
  store i64 %160, i64* %10, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %164, 24
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl i32 %169, 16
  %171 = or i32 %165, %170
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %175, 8
  %177 = or i32 %171, %176
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 3
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = or i32 %177, %181
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %11, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  store i8* %185, i8** %9, align 8
  %186 = load i64, i64* %10, align 8
  %187 = sub i64 %186, 4
  store i64 %187, i64* %10, align 8
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %154
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %11, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %195, i64* %4, align 8
  br label %239

196:                                              ; preds = %190, %154
  %197 = call %struct.TYPE_10__* @__gss_get_mechanism(%struct.TYPE_12__* %12)
  store %struct.TYPE_10__* %197, %struct.TYPE_10__** %13, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %199 = icmp ne %struct.TYPE_10__* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %201, i64* %4, align 8
  br label %239

202:                                              ; preds = %196
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64 (i64*, %struct.TYPE_11__*, i32, i64*)*, i64 (i64*, %struct.TYPE_11__*, i32, i64*)** %204, align 8
  %206 = load i64*, i64** %5, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = load i32, i32* @GSS_C_NT_EXPORT_NAME, align 4
  %209 = call i64 %205(i64* %206, %struct.TYPE_11__* %207, i32 %208, i64* %15)
  store i64 %209, i64* %8, align 8
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* @GSS_S_COMPLETE, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %202
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64*, i64** %5, align 8
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @_gss_mg_error(%struct.TYPE_10__* %214, i64 %215, i64 %217)
  %219 = load i64, i64* %8, align 8
  store i64 %219, i64* %4, align 8
  br label %239

220:                                              ; preds = %202
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %222 = load i64, i64* %15, align 8
  %223 = call %struct._gss_name* @_gss_make_name(%struct.TYPE_10__* %221, i64 %222)
  store %struct._gss_name* %223, %struct._gss_name** %14, align 8
  %224 = load %struct._gss_name*, %struct._gss_name** %14, align 8
  %225 = icmp ne %struct._gss_name* %224, null
  br i1 %225, label %233, label %226

226:                                              ; preds = %220
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32 (i64*, i64*)*, i32 (i64*, i64*)** %228, align 8
  %230 = load i64*, i64** %5, align 8
  %231 = call i32 %229(i64* %230, i64* %15)
  %232 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %232, i64* %4, align 8
  br label %239

233:                                              ; preds = %220
  %234 = load %struct._gss_name*, %struct._gss_name** %14, align 8
  %235 = ptrtoint %struct._gss_name* %234 to i64
  %236 = load i64*, i64** %7, align 8
  store i64 %235, i64* %236, align 8
  %237 = load i64*, i64** %5, align 8
  store i64 0, i64* %237, align 8
  %238 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %238, i64* %4, align 8
  br label %239

239:                                              ; preds = %233, %226, %213, %200, %194, %152, %143, %77, %54, %45, %36, %28
  %240 = load i64, i64* %4, align 8
  ret i64 %240
}

declare dso_local %struct.TYPE_10__* @__gss_get_mechanism(%struct.TYPE_12__*) #1

declare dso_local i32 @_gss_mg_error(%struct.TYPE_10__*, i64, i64) #1

declare dso_local %struct._gss_name* @_gss_make_name(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
