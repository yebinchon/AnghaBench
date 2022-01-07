; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { %struct.config_file*, %struct.config_file*, i32, %struct.config_file*, i32, i32, %struct.config_file*, %struct.config_file*, %struct.config_file*, i32, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.config_file*, i32, i32, i32, %struct.config_file*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.TYPE_3__, i32, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file*, %struct.config_file* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_delete(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  %3 = load %struct.config_file*, %struct.config_file** %2, align 8
  %4 = icmp ne %struct.config_file* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %268

6:                                                ; preds = %1
  %7 = load %struct.config_file*, %struct.config_file** %2, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 70
  %9 = load %struct.config_file*, %struct.config_file** %8, align 8
  %10 = call i32 @free(%struct.config_file* %9)
  %11 = load %struct.config_file*, %struct.config_file** %2, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 69
  %13 = load %struct.config_file*, %struct.config_file** %12, align 8
  %14 = call i32 @free(%struct.config_file* %13)
  %15 = load %struct.config_file*, %struct.config_file** %2, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 68
  %17 = load %struct.config_file*, %struct.config_file** %16, align 8
  %18 = call i32 @free(%struct.config_file* %17)
  %19 = load %struct.config_file*, %struct.config_file** %2, align 8
  %20 = getelementptr inbounds %struct.config_file, %struct.config_file* %19, i32 0, i32 67
  %21 = load %struct.config_file*, %struct.config_file** %20, align 8
  %22 = call i32 @free(%struct.config_file* %21)
  %23 = load %struct.config_file*, %struct.config_file** %2, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 66
  %25 = load %struct.config_file*, %struct.config_file** %24, align 8
  %26 = call i32 @free(%struct.config_file* %25)
  %27 = load %struct.config_file*, %struct.config_file** %2, align 8
  %28 = getelementptr inbounds %struct.config_file, %struct.config_file* %27, i32 0, i32 65
  %29 = load %struct.config_file*, %struct.config_file** %28, align 8
  %30 = call i32 @free(%struct.config_file* %29)
  %31 = load %struct.config_file*, %struct.config_file** %2, align 8
  %32 = getelementptr inbounds %struct.config_file, %struct.config_file* %31, i32 0, i32 64
  %33 = load %struct.config_file*, %struct.config_file** %32, align 8
  %34 = call i32 @free(%struct.config_file* %33)
  %35 = load %struct.config_file*, %struct.config_file** %2, align 8
  %36 = getelementptr inbounds %struct.config_file, %struct.config_file* %35, i32 0, i32 63
  %37 = load %struct.config_file*, %struct.config_file** %36, align 8
  %38 = call i32 @free(%struct.config_file* %37)
  %39 = load %struct.config_file*, %struct.config_file** %2, align 8
  %40 = getelementptr inbounds %struct.config_file, %struct.config_file* %39, i32 0, i32 62
  %41 = load %struct.config_file*, %struct.config_file** %40, align 8
  %42 = call i32 @free(%struct.config_file* %41)
  %43 = load %struct.config_file*, %struct.config_file** %2, align 8
  %44 = getelementptr inbounds %struct.config_file, %struct.config_file* %43, i32 0, i32 61
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @config_delstrlist(i32 %45)
  %47 = load %struct.config_file*, %struct.config_file** %2, align 8
  %48 = getelementptr inbounds %struct.config_file, %struct.config_file* %47, i32 0, i32 60
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @config_delstrlist(i32 %50)
  %52 = load %struct.config_file*, %struct.config_file** %2, align 8
  %53 = getelementptr inbounds %struct.config_file, %struct.config_file* %52, i32 0, i32 59
  %54 = load %struct.config_file*, %struct.config_file** %53, align 8
  %55 = call i32 @free(%struct.config_file* %54)
  %56 = load %struct.config_file*, %struct.config_file** %2, align 8
  %57 = getelementptr inbounds %struct.config_file, %struct.config_file* %56, i32 0, i32 58
  %58 = load %struct.config_file*, %struct.config_file** %57, align 8
  %59 = call i32 @free(%struct.config_file* %58)
  %60 = load %struct.config_file*, %struct.config_file** %2, align 8
  %61 = getelementptr inbounds %struct.config_file, %struct.config_file* %60, i32 0, i32 57
  %62 = load %struct.config_file*, %struct.config_file** %61, align 8
  %63 = call i32 @free(%struct.config_file* %62)
  %64 = load %struct.config_file*, %struct.config_file** %2, align 8
  %65 = getelementptr inbounds %struct.config_file, %struct.config_file* %64, i32 0, i32 56
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.config_file*, %struct.config_file** %2, align 8
  %68 = getelementptr inbounds %struct.config_file, %struct.config_file* %67, i32 0, i32 55
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @config_del_strarray(i32 %66, i32 %69)
  %71 = load %struct.config_file*, %struct.config_file** %2, align 8
  %72 = getelementptr inbounds %struct.config_file, %struct.config_file* %71, i32 0, i32 54
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.config_file*, %struct.config_file** %2, align 8
  %75 = getelementptr inbounds %struct.config_file, %struct.config_file* %74, i32 0, i32 53
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @config_del_strarray(i32 %73, i32 %76)
  %78 = load %struct.config_file*, %struct.config_file** %2, align 8
  %79 = getelementptr inbounds %struct.config_file, %struct.config_file* %78, i32 0, i32 52
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @config_delstubs(i32 %80)
  %82 = load %struct.config_file*, %struct.config_file** %2, align 8
  %83 = getelementptr inbounds %struct.config_file, %struct.config_file* %82, i32 0, i32 51
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @config_delstubs(i32 %84)
  %86 = load %struct.config_file*, %struct.config_file** %2, align 8
  %87 = getelementptr inbounds %struct.config_file, %struct.config_file* %86, i32 0, i32 50
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @config_delauths(i32 %88)
  %90 = load %struct.config_file*, %struct.config_file** %2, align 8
  %91 = getelementptr inbounds %struct.config_file, %struct.config_file* %90, i32 0, i32 49
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @config_delviews(i32 %92)
  %94 = load %struct.config_file*, %struct.config_file** %2, align 8
  %95 = getelementptr inbounds %struct.config_file, %struct.config_file* %94, i32 0, i32 48
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @config_delstrlist(i32 %96)
  %98 = load %struct.config_file*, %struct.config_file** %2, align 8
  %99 = getelementptr inbounds %struct.config_file, %struct.config_file* %98, i32 0, i32 47
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @config_delstrlist(i32 %100)
  %102 = load %struct.config_file*, %struct.config_file** %2, align 8
  %103 = getelementptr inbounds %struct.config_file, %struct.config_file* %102, i32 0, i32 44
  %104 = load %struct.config_file*, %struct.config_file** %103, align 8
  %105 = call i32 @free(%struct.config_file* %104)
  %106 = load %struct.config_file*, %struct.config_file** %2, align 8
  %107 = getelementptr inbounds %struct.config_file, %struct.config_file* %106, i32 0, i32 43
  %108 = load %struct.config_file*, %struct.config_file** %107, align 8
  %109 = call i32 @free(%struct.config_file* %108)
  %110 = load %struct.config_file*, %struct.config_file** %2, align 8
  %111 = getelementptr inbounds %struct.config_file, %struct.config_file* %110, i32 0, i32 42
  %112 = load %struct.config_file*, %struct.config_file** %111, align 8
  %113 = call i32 @free(%struct.config_file* %112)
  %114 = load %struct.config_file*, %struct.config_file** %2, align 8
  %115 = getelementptr inbounds %struct.config_file, %struct.config_file* %114, i32 0, i32 41
  %116 = load %struct.config_file*, %struct.config_file** %115, align 8
  %117 = call i32 @free(%struct.config_file* %116)
  %118 = load %struct.config_file*, %struct.config_file** %2, align 8
  %119 = getelementptr inbounds %struct.config_file, %struct.config_file* %118, i32 0, i32 40
  %120 = load %struct.config_file*, %struct.config_file** %119, align 8
  %121 = call i32 @free(%struct.config_file* %120)
  %122 = load %struct.config_file*, %struct.config_file** %2, align 8
  %123 = getelementptr inbounds %struct.config_file, %struct.config_file* %122, i32 0, i32 39
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @config_delstrlist(i32 %124)
  %126 = load %struct.config_file*, %struct.config_file** %2, align 8
  %127 = getelementptr inbounds %struct.config_file, %struct.config_file* %126, i32 0, i32 38
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @config_delstrlist(i32 %128)
  %130 = load %struct.config_file*, %struct.config_file** %2, align 8
  %131 = getelementptr inbounds %struct.config_file, %struct.config_file* %130, i32 0, i32 37
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @config_delstrlist(i32 %132)
  %134 = load %struct.config_file*, %struct.config_file** %2, align 8
  %135 = getelementptr inbounds %struct.config_file, %struct.config_file* %134, i32 0, i32 36
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @config_delstrlist(i32 %136)
  %138 = load %struct.config_file*, %struct.config_file** %2, align 8
  %139 = getelementptr inbounds %struct.config_file, %struct.config_file* %138, i32 0, i32 35
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @config_delstrlist(i32 %140)
  %142 = load %struct.config_file*, %struct.config_file** %2, align 8
  %143 = getelementptr inbounds %struct.config_file, %struct.config_file* %142, i32 0, i32 34
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @config_delstrlist(i32 %144)
  %146 = load %struct.config_file*, %struct.config_file** %2, align 8
  %147 = getelementptr inbounds %struct.config_file, %struct.config_file* %146, i32 0, i32 33
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @config_delstrlist(i32 %148)
  %150 = load %struct.config_file*, %struct.config_file** %2, align 8
  %151 = getelementptr inbounds %struct.config_file, %struct.config_file* %150, i32 0, i32 32
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @config_delstrlist(i32 %152)
  %154 = load %struct.config_file*, %struct.config_file** %2, align 8
  %155 = getelementptr inbounds %struct.config_file, %struct.config_file* %154, i32 0, i32 31
  %156 = load %struct.config_file*, %struct.config_file** %155, align 8
  %157 = call i32 @free(%struct.config_file* %156)
  %158 = load %struct.config_file*, %struct.config_file** %2, align 8
  %159 = getelementptr inbounds %struct.config_file, %struct.config_file* %158, i32 0, i32 30
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @config_delstrlist(i32 %160)
  %162 = load %struct.config_file*, %struct.config_file** %2, align 8
  %163 = getelementptr inbounds %struct.config_file, %struct.config_file* %162, i32 0, i32 29
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @config_deldblstrlist(i32 %164)
  %166 = load %struct.config_file*, %struct.config_file** %2, align 8
  %167 = getelementptr inbounds %struct.config_file, %struct.config_file* %166, i32 0, i32 28
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @config_deldblstrlist(i32 %168)
  %170 = load %struct.config_file*, %struct.config_file** %2, align 8
  %171 = getelementptr inbounds %struct.config_file, %struct.config_file* %170, i32 0, i32 27
  %172 = load %struct.config_file*, %struct.config_file** %171, align 8
  %173 = call i32 @free(%struct.config_file* %172)
  %174 = load %struct.config_file*, %struct.config_file** %2, align 8
  %175 = getelementptr inbounds %struct.config_file, %struct.config_file* %174, i32 0, i32 26
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @config_deldblstrlist(i32 %176)
  %178 = load %struct.config_file*, %struct.config_file** %2, align 8
  %179 = getelementptr inbounds %struct.config_file, %struct.config_file* %178, i32 0, i32 25
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @config_delstrlist(i32 %180)
  %182 = load %struct.config_file*, %struct.config_file** %2, align 8
  %183 = getelementptr inbounds %struct.config_file, %struct.config_file* %182, i32 0, i32 24
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @config_delstrlist(i32 %184)
  %186 = load %struct.config_file*, %struct.config_file** %2, align 8
  %187 = getelementptr inbounds %struct.config_file, %struct.config_file* %186, i32 0, i32 23
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @config_deltrplstrlist(i32 %188)
  %190 = load %struct.config_file*, %struct.config_file** %2, align 8
  %191 = getelementptr inbounds %struct.config_file, %struct.config_file* %190, i32 0, i32 22
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.config_file*, %struct.config_file** %2, align 8
  %194 = getelementptr inbounds %struct.config_file, %struct.config_file* %193, i32 0, i32 21
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @config_del_strarray(i32 %192, i32 %195)
  %197 = load %struct.config_file*, %struct.config_file** %2, align 8
  %198 = getelementptr inbounds %struct.config_file, %struct.config_file* %197, i32 0, i32 20
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @config_del_strbytelist(i32 %199)
  %201 = load %struct.config_file*, %struct.config_file** %2, align 8
  %202 = getelementptr inbounds %struct.config_file, %struct.config_file* %201, i32 0, i32 19
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @config_del_strbytelist(i32 %203)
  %205 = load %struct.config_file*, %struct.config_file** %2, align 8
  %206 = getelementptr inbounds %struct.config_file, %struct.config_file* %205, i32 0, i32 18
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @config_del_strbytelist(i32 %207)
  %209 = load %struct.config_file*, %struct.config_file** %2, align 8
  %210 = getelementptr inbounds %struct.config_file, %struct.config_file* %209, i32 0, i32 17
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @config_deltrplstrlist(i32 %211)
  %213 = load %struct.config_file*, %struct.config_file** %2, align 8
  %214 = getelementptr inbounds %struct.config_file, %struct.config_file* %213, i32 0, i32 16
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @config_deltrplstrlist(i32 %215)
  %217 = load %struct.config_file*, %struct.config_file** %2, align 8
  %218 = getelementptr inbounds %struct.config_file, %struct.config_file* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @config_delstrlist(i32 %220)
  %222 = load %struct.config_file*, %struct.config_file** %2, align 8
  %223 = getelementptr inbounds %struct.config_file, %struct.config_file* %222, i32 0, i32 14
  %224 = load %struct.config_file*, %struct.config_file** %223, align 8
  %225 = call i32 @free(%struct.config_file* %224)
  %226 = load %struct.config_file*, %struct.config_file** %2, align 8
  %227 = getelementptr inbounds %struct.config_file, %struct.config_file* %226, i32 0, i32 13
  %228 = load %struct.config_file*, %struct.config_file** %227, align 8
  %229 = call i32 @free(%struct.config_file* %228)
  %230 = load %struct.config_file*, %struct.config_file** %2, align 8
  %231 = getelementptr inbounds %struct.config_file, %struct.config_file* %230, i32 0, i32 12
  %232 = load %struct.config_file*, %struct.config_file** %231, align 8
  %233 = call i32 @free(%struct.config_file* %232)
  %234 = load %struct.config_file*, %struct.config_file** %2, align 8
  %235 = getelementptr inbounds %struct.config_file, %struct.config_file* %234, i32 0, i32 11
  %236 = load %struct.config_file*, %struct.config_file** %235, align 8
  %237 = call i32 @free(%struct.config_file* %236)
  %238 = load %struct.config_file*, %struct.config_file** %2, align 8
  %239 = getelementptr inbounds %struct.config_file, %struct.config_file* %238, i32 0, i32 10
  %240 = load %struct.config_file*, %struct.config_file** %239, align 8
  %241 = call i32 @free(%struct.config_file* %240)
  %242 = load %struct.config_file*, %struct.config_file** %2, align 8
  %243 = getelementptr inbounds %struct.config_file, %struct.config_file* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @config_delstrlist(i32 %244)
  %246 = load %struct.config_file*, %struct.config_file** %2, align 8
  %247 = getelementptr inbounds %struct.config_file, %struct.config_file* %246, i32 0, i32 8
  %248 = load %struct.config_file*, %struct.config_file** %247, align 8
  %249 = call i32 @free(%struct.config_file* %248)
  %250 = load %struct.config_file*, %struct.config_file** %2, align 8
  %251 = getelementptr inbounds %struct.config_file, %struct.config_file* %250, i32 0, i32 7
  %252 = load %struct.config_file*, %struct.config_file** %251, align 8
  %253 = call i32 @free(%struct.config_file* %252)
  %254 = load %struct.config_file*, %struct.config_file** %2, align 8
  %255 = getelementptr inbounds %struct.config_file, %struct.config_file* %254, i32 0, i32 6
  %256 = load %struct.config_file*, %struct.config_file** %255, align 8
  %257 = call i32 @free(%struct.config_file* %256)
  %258 = load %struct.config_file*, %struct.config_file** %2, align 8
  %259 = getelementptr inbounds %struct.config_file, %struct.config_file* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @config_deldblstrlist(i32 %260)
  %262 = load %struct.config_file*, %struct.config_file** %2, align 8
  %263 = getelementptr inbounds %struct.config_file, %struct.config_file* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @config_deldblstrlist(i32 %264)
  %266 = load %struct.config_file*, %struct.config_file** %2, align 8
  %267 = call i32 @free(%struct.config_file* %266)
  br label %268

268:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.config_file*) #1

declare dso_local i32 @config_delstrlist(i32) #1

declare dso_local i32 @config_del_strarray(i32, i32) #1

declare dso_local i32 @config_delstubs(i32) #1

declare dso_local i32 @config_delauths(i32) #1

declare dso_local i32 @config_delviews(i32) #1

declare dso_local i32 @config_deldblstrlist(i32) #1

declare dso_local i32 @config_deltrplstrlist(i32) #1

declare dso_local i32 @config_del_strbytelist(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
