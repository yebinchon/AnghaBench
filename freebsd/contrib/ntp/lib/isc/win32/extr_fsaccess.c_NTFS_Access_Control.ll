; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_NTFS_Access_Control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_fsaccess.c_NTFS_Access_Control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@ISC_R_NOPERM = common dso_local global i32 0, align 4
@ACL_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Administrators\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Everyone\00", align 1
@ISC_FSACCESS_READ = common dso_local global i32 0, align 4
@FILE_GENERIC_READ = common dso_local global i32 0, align 4
@ISC_FSACCESS_WRITE = common dso_local global i32 0, align 4
@FILE_GENERIC_WRITE = common dso_local global i32 0, align 4
@ISC_FSACCESS_EXECUTE = common dso_local global i32 0, align 4
@FILE_GENERIC_EXECUTE = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i64 0, align 8
@ISC_FSACCESS_CREATECHILD = common dso_local global i32 0, align 4
@FILE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@FILE_ADD_FILE = common dso_local global i32 0, align 4
@ISC_FSACCESS_DELETECHILD = common dso_local global i32 0, align 4
@FILE_DELETE_CHILD = common dso_local global i32 0, align 4
@ISC_FSACCESS_LISTDIRECTORY = common dso_local global i32 0, align 4
@FILE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@ISC_FSACCESS_ACCESSCHILD = common dso_local global i32 0, align 4
@FILE_TRAVERSE = common dso_local global i32 0, align 4
@FILE_ALL_ACCESS = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_ALL = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NTFS_Access_Control(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca [100 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [100 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [100 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [100 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %28 = ptrtoint [1024 x i32]* %11 to i32
  store i32 %28, i32* %12, align 4
  %29 = ptrtoint [100 x i32]* %13 to i32
  store i32 %29, i32* %14, align 4
  store i32 400, i32* %15, align 4
  %30 = ptrtoint [100 x i32]* %16 to i32
  store i32 %30, i32* %17, align 4
  store i32 400, i32* %18, align 4
  %31 = ptrtoint [100 x i32]* %19 to i32
  store i32 %31, i32* %20, align 4
  store i32 400, i32* %21, align 4
  store i32 100, i32* %23, align 4
  %32 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %33 = call i32 @InitializeSecurityDescriptor(i32* %10, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %36, i32* %5, align 4
  br label %274

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ACL_REVISION, align 4
  %40 = call i32 @InitializeAcl(i32 %38, i32 4096, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %43, i32* %5, align 4
  br label %274

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %48 = call i32 @LookupAccountName(i32 0, i8* %45, i32 %46, i32* %15, i8* %47, i32* %23, i32* %24)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %51, i32* %5, align 4
  br label %274

52:                                               ; preds = %44
  store i32 100, i32* %23, align 4
  %53 = load i32, i32* %17, align 4
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %55 = call i32 @LookupAccountName(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %18, i8* %54, i32* %23, i32* %24)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = call i32 (...) @GetLastError()
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %59, i32* %5, align 4
  br label %274

60:                                               ; preds = %52
  store i32 100, i32* %23, align 4
  %61 = load i32, i32* %20, align 4
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %63 = call i32 @LookupAccountName(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32* %21, i8* %62, i32* %23, i32* %24)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = call i32 (...) @GetLastError()
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %67, i32* %5, align 4
  br label %274

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %70 = load i32, i32* %27, align 4
  %71 = load i32, i32* @ISC_FSACCESS_READ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @FILE_GENERIC_READ, align 4
  %76 = load i32, i32* %26, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %26, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* @ISC_FSACCESS_WRITE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @FILE_GENERIC_WRITE, align 4
  %85 = load i32, i32* %26, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %26, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* @ISC_FSACCESS_EXECUTE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @FILE_GENERIC_EXECUTE, align 4
  %94 = load i32, i32* %26, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %26, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @ISC_TRUE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %139

100:                                              ; preds = %96
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* @ISC_FSACCESS_CREATECHILD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @FILE_ADD_SUBDIRECTORY, align 4
  %107 = load i32, i32* @FILE_ADD_FILE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %26, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %26, align 4
  br label %111

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* @ISC_FSACCESS_DELETECHILD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @FILE_DELETE_CHILD, align 4
  %118 = load i32, i32* %26, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %26, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %27, align 4
  %122 = load i32, i32* @ISC_FSACCESS_LISTDIRECTORY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @FILE_LIST_DIRECTORY, align 4
  %127 = load i32, i32* %26, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %26, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* @ISC_FSACCESS_ACCESSCHILD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @FILE_TRAVERSE, align 4
  %136 = load i32, i32* %26, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %26, align 4
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %96
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* @FILE_GENERIC_READ, align 4
  %142 = load i32, i32* @FILE_GENERIC_WRITE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @FILE_GENERIC_EXECUTE, align 4
  %145 = or i32 %143, %144
  %146 = icmp eq i32 %140, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i32, i32* @FILE_ALL_ACCESS, align 4
  %149 = load i32, i32* %26, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %26, align 4
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %153 = load i32, i32* %26, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %26, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @ACL_REVISION, align 4
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @AddAccessAllowedAce(i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %151
  %162 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %162, i32* %5, align 4
  br label %274

163:                                              ; preds = %151
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @ACL_REVISION, align 4
  %166 = load i32, i32* %26, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @AddAccessAllowedAce(i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %171, i32* %5, align 4
  br label %274

172:                                              ; preds = %163
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* @STEP, align 4
  %175 = ashr i32 %173, %174
  store i32 %175, i32* %27, align 4
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* @STEP, align 4
  %178 = ashr i32 %176, %177
  store i32 %178, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* @ISC_FSACCESS_READ, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %172
  %184 = load i32, i32* @FILE_GENERIC_READ, align 4
  %185 = load i32, i32* %26, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %26, align 4
  br label %187

187:                                              ; preds = %183, %172
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* @ISC_FSACCESS_WRITE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i32, i32* @FILE_GENERIC_WRITE, align 4
  %194 = load i32, i32* %26, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %26, align 4
  br label %196

196:                                              ; preds = %192, %187
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* @ISC_FSACCESS_EXECUTE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i32, i32* @FILE_GENERIC_EXECUTE, align 4
  %203 = load i32, i32* %26, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %26, align 4
  br label %205

205:                                              ; preds = %201, %196
  %206 = load i64, i64* %9, align 8
  %207 = load i64, i64* @TRUE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %248

209:                                              ; preds = %205
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* @ISC_FSACCESS_CREATECHILD, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32, i32* @FILE_ADD_SUBDIRECTORY, align 4
  %216 = load i32, i32* @FILE_ADD_FILE, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* %26, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %26, align 4
  br label %220

220:                                              ; preds = %214, %209
  %221 = load i32, i32* %27, align 4
  %222 = load i32, i32* @ISC_FSACCESS_DELETECHILD, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @FILE_DELETE_CHILD, align 4
  %227 = load i32, i32* %26, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %26, align 4
  br label %229

229:                                              ; preds = %225, %220
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* @ISC_FSACCESS_LISTDIRECTORY, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i32, i32* @FILE_LIST_DIRECTORY, align 4
  %236 = load i32, i32* %26, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %26, align 4
  br label %238

238:                                              ; preds = %234, %229
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* @ISC_FSACCESS_ACCESSCHILD, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load i32, i32* @FILE_TRAVERSE, align 4
  %245 = load i32, i32* %26, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %26, align 4
  br label %247

247:                                              ; preds = %243, %238
  br label %248

248:                                              ; preds = %247, %205
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* @ACL_REVISION, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* %20, align 4
  %253 = call i32 @AddAccessAllowedAce(i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %248
  %256 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %256, i32* %5, align 4
  br label %274

257:                                              ; preds = %248
  %258 = load i64, i64* @TRUE, align 8
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* @FALSE, align 4
  %261 = call i32 @SetSecurityDescriptorDacl(i32* %10, i64 %258, i32 %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %257
  %264 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %264, i32* %5, align 4
  br label %274

265:                                              ; preds = %257
  %266 = load i8*, i8** %6, align 8
  %267 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %268 = call i32 @SetFileSecurity(i8* %266, i32 %267, i32* %10)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %265
  %271 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %271, i32* %5, align 4
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %272, %270, %263, %255, %170, %161, %65, %57, %50, %42, %35
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32 @InitializeSecurityDescriptor(i32*, i32) #1

declare dso_local i32 @InitializeAcl(i32, i32, i32) #1

declare dso_local i32 @LookupAccountName(i32, i8*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @AddAccessAllowedAce(i32, i32, i32, i32) #1

declare dso_local i32 @SetSecurityDescriptorDacl(i32*, i64, i32, i32) #1

declare dso_local i32 @SetFileSecurity(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
