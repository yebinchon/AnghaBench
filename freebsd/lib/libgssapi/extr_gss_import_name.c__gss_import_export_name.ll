; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_import_name.c__gss_import_export_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_import_name.c__gss_import_export_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i32, i8* }
%struct._gss_mech_switch = type { i64 (i64*, %struct.TYPE_6__*, i32, i64*)*, i32 (i64*, i64*)* }
%struct._gss_name = type { i32 }

@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@GSS_C_NT_EXPORT_NAME = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_6__*, i64*)* @_gss_import_export_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_gss_import_export_name(i64* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct._gss_mech_switch*, align 8
  %14 = alloca %struct._gss_name*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %28, i64* %4, align 8
  br label %232

29:                                               ; preds = %3
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 4
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %29
  %42 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %42, i64* %4, align 8
  br label %232

43:                                               ; preds = %35
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %46, 2
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %51, i64* %4, align 8
  br label %232

52:                                               ; preds = %43
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %66, 2
  store i64 %67, i64* %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 6
  br i1 %72, label %73, label %75

73:                                               ; preds = %52
  %74 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %74, i64* %4, align 8
  br label %232

75:                                               ; preds = %52
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %11, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 128
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %75
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %104, %88
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %16, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %106, 8
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %107, %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %9, align 8
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %11, align 8
  br label %100

120:                                              ; preds = %100
  br label %133

121:                                              ; preds = %75
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, -1
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %11, align 8
  br label %133

133:                                              ; preds = %121, %120
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %11, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %140, i64* %4, align 8
  br label %232

141:                                              ; preds = %133
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i8* %142, i8** %143, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %145, 4
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %149, i64* %4, align 8
  br label %232

150:                                              ; preds = %141
  %151 = load i64, i64* %11, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %153, i8** %9, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %10, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %10, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl i32 %160, 24
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, 16
  %167 = or i32 %161, %166
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 8
  %173 = or i32 %167, %172
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = or i32 %173, %177
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %11, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 4
  store i8* %181, i8** %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = sub i64 %182, 4
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %11, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %150
  %188 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %188, i64* %4, align 8
  br label %232

189:                                              ; preds = %150
  %190 = call %struct._gss_mech_switch* @_gss_find_mech_switch(%struct.TYPE_7__* %12)
  store %struct._gss_mech_switch* %190, %struct._gss_mech_switch** %13, align 8
  %191 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %192 = icmp ne %struct._gss_mech_switch* %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %194, i64* %4, align 8
  br label %232

195:                                              ; preds = %189
  %196 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %197 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %196, i32 0, i32 0
  %198 = load i64 (i64*, %struct.TYPE_6__*, i32, i64*)*, i64 (i64*, %struct.TYPE_6__*, i32, i64*)** %197, align 8
  %199 = load i64*, i64** %5, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = load i32, i32* @GSS_C_NT_EXPORT_NAME, align 4
  %202 = call i64 %198(i64* %199, %struct.TYPE_6__* %200, i32 %201, i64* %15)
  store i64 %202, i64* %8, align 8
  %203 = load i64, i64* %8, align 8
  %204 = load i64, i64* @GSS_S_COMPLETE, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %195
  %207 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load i64*, i64** %5, align 8
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @_gss_mg_error(%struct._gss_mech_switch* %207, i64 %208, i64 %210)
  %212 = load i64, i64* %8, align 8
  store i64 %212, i64* %4, align 8
  br label %232

213:                                              ; preds = %195
  %214 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %215 = load i64, i64* %15, align 8
  %216 = call %struct._gss_name* @_gss_make_name(%struct._gss_mech_switch* %214, i64 %215)
  store %struct._gss_name* %216, %struct._gss_name** %14, align 8
  %217 = load %struct._gss_name*, %struct._gss_name** %14, align 8
  %218 = icmp ne %struct._gss_name* %217, null
  br i1 %218, label %226, label %219

219:                                              ; preds = %213
  %220 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %13, align 8
  %221 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %220, i32 0, i32 1
  %222 = load i32 (i64*, i64*)*, i32 (i64*, i64*)** %221, align 8
  %223 = load i64*, i64** %5, align 8
  %224 = call i32 %222(i64* %223, i64* %15)
  %225 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %225, i64* %4, align 8
  br label %232

226:                                              ; preds = %213
  %227 = load %struct._gss_name*, %struct._gss_name** %14, align 8
  %228 = ptrtoint %struct._gss_name* %227 to i64
  %229 = load i64*, i64** %7, align 8
  store i64 %228, i64* %229, align 8
  %230 = load i64*, i64** %5, align 8
  store i64 0, i64* %230, align 8
  %231 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %231, i64* %4, align 8
  br label %232

232:                                              ; preds = %226, %219, %206, %193, %187, %148, %139, %73, %50, %41, %27
  %233 = load i64, i64* %4, align 8
  ret i64 %233
}

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(%struct.TYPE_7__*) #1

declare dso_local i32 @_gss_mg_error(%struct._gss_mech_switch*, i64, i64) #1

declare dso_local %struct._gss_name* @_gss_make_name(%struct._gss_mech_switch*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
