; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i32, i32 }
%struct.passwd = type { i32, i64 }
%struct.group = type { i32, i64 }
%struct.quotafile = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ac:guvl:\00", align 1
@aflag = common dso_local global i64 0, align 8
@cflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@gflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@GRPQUOTA = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"the -l option is now deprecated\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: can't open\00", align 1
@FSTAB = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s not found in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fstab*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca %struct.quotafile*, align 8
  %10 = alloca %struct.quotafile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %50, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %15, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load i32, i32* %15, align 4
  switch i32 %24, label %48 [
    i32 97, label %25
    i32 99, label %28
    i32 103, label %36
    i32 117, label %39
    i32 118, label %42
    i32 108, label %45
  ]

25:                                               ; preds = %23
  %26 = load i64, i64* @aflag, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @aflag, align 8
  br label %50

28:                                               ; preds = %23
  %29 = load i32, i32* @cflag, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @atoi(i32 %34)
  store i32 %35, i32* @cflag, align 4
  br label %50

36:                                               ; preds = %23
  %37 = load i64, i64* @gflag, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @gflag, align 8
  br label %50

39:                                               ; preds = %23
  %40 = load i64, i64* @uflag, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @uflag, align 8
  br label %50

42:                                               ; preds = %23
  %43 = load i32, i32* @vflag, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @vflag, align 4
  br label %50

45:                                               ; preds = %23
  %46 = load i32, i32* @optarg, align 4
  %47 = call i32 @atoi(i32 %46)
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %23
  %49 = call i32 (...) @usage()
  br label %50

50:                                               ; preds = %48, %45, %42, %39, %36, %33, %25
  br label %18

51:                                               ; preds = %18
  %52 = load i64, i64* @optind, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load i64, i64* @optind, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 %57
  store i8** %59, i8*** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i64, i64* @aflag, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %51
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* @aflag, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %62
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %71, %68, %65
  %74 = load i32, i32* @cflag, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* @cflag, align 4
  %78 = icmp ne i32 %77, 32
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @cflag, align 4
  %81 = icmp ne i32 %80, 64
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @usage()
  br label %84

84:                                               ; preds = %82, %79, %76, %73
  %85 = load i64, i64* @gflag, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @uflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @gflag, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* @gflag, align 8
  %93 = load i64, i64* @uflag, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* @uflag, align 8
  br label %95

95:                                               ; preds = %90, %87, %84
  %96 = load i64, i64* @gflag, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = call i32 (...) @setgrent()
  br label %100

100:                                              ; preds = %103, %98
  %101 = call %struct.group* (...) @getgrent()
  store %struct.group* %101, %struct.group** %8, align 8
  %102 = icmp ne %struct.group* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.group*, %struct.group** %8, align 8
  %105 = getelementptr inbounds %struct.group, %struct.group* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @GRPQUOTA, align 4
  %109 = load %struct.group*, %struct.group** %8, align 8
  %110 = getelementptr inbounds %struct.group, %struct.group* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @addid(i32 %107, i32 %108, i32 %111, i32* null)
  br label %100

113:                                              ; preds = %100
  %114 = call i32 (...) @endgrent()
  br label %115

115:                                              ; preds = %113, %95
  %116 = load i64, i64* @uflag, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = call i32 (...) @setpwent()
  br label %120

120:                                              ; preds = %123, %118
  %121 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %121, %struct.passwd** %7, align 8
  %122 = icmp ne %struct.passwd* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.passwd*, %struct.passwd** %7, align 8
  %125 = getelementptr inbounds %struct.passwd, %struct.passwd* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @USRQUOTA, align 4
  %129 = load %struct.passwd*, %struct.passwd** %7, align 8
  %130 = getelementptr inbounds %struct.passwd, %struct.passwd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @addid(i32 %127, i32 %128, i32 %131, i32* null)
  br label %120

133:                                              ; preds = %120
  %134 = call i32 (...) @endpwent()
  br label %135

135:                                              ; preds = %133, %115
  %136 = load i32, i32* %13, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i64, i64* @aflag, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i64, i64* @uflag, align 8
  %145 = load i64, i64* @gflag, align 8
  %146 = call i32 @checkfstab(i64 %144, i64 %145)
  %147 = call i32 @exit(i32 %146) #3
  unreachable

148:                                              ; preds = %140
  %149 = call i64 (...) @setfsent()
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** @FSTAB, align 8
  %153 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %233, %211, %154
  %156 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %156, %struct.fstab** %6, align 8
  %157 = icmp ne %struct.fstab* %156, null
  br i1 %157, label %158, label %234

158:                                              ; preds = %155
  %159 = load %struct.fstab*, %struct.fstab** %6, align 8
  %160 = getelementptr inbounds %struct.fstab, %struct.fstab* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @oneof(i32 %161, i8** %162, i32 %163)
  store i32 %164, i32* %12, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %158
  %167 = load %struct.fstab*, %struct.fstab** %6, align 8
  %168 = getelementptr inbounds %struct.fstab, %struct.fstab* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @oneof(i32 %169, i8** %170, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %233

174:                                              ; preds = %166, %158
  %175 = load %struct.fstab*, %struct.fstab** %6, align 8
  %176 = getelementptr inbounds %struct.fstab, %struct.fstab* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @blockcheck(i32 %177)
  store i8* %178, i8** %17, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %233

180:                                              ; preds = %174
  %181 = load i32, i32* %12, align 4
  %182 = shl i32 1, %181
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %16, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %16, align 8
  store %struct.quotafile* null, %struct.quotafile** %9, align 8
  %186 = load i64, i64* @uflag, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %180
  %189 = load %struct.fstab*, %struct.fstab** %6, align 8
  %190 = load i32, i32* @USRQUOTA, align 4
  %191 = load i32, i32* @O_CREAT, align 4
  %192 = load i32, i32* @O_RDWR, align 4
  %193 = or i32 %191, %192
  %194 = call %struct.quotafile* @quota_open(%struct.fstab* %189, i32 %190, i32 %193)
  store %struct.quotafile* %194, %struct.quotafile** %9, align 8
  br label %195

195:                                              ; preds = %188, %180
  store %struct.quotafile* null, %struct.quotafile** %10, align 8
  %196 = load i64, i64* @gflag, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load %struct.fstab*, %struct.fstab** %6, align 8
  %200 = load i32, i32* @GRPQUOTA, align 4
  %201 = load i32, i32* @O_CREAT, align 4
  %202 = load i32, i32* @O_RDWR, align 4
  %203 = or i32 %201, %202
  %204 = call %struct.quotafile* @quota_open(%struct.fstab* %199, i32 %200, i32 %203)
  store %struct.quotafile* %204, %struct.quotafile** %10, align 8
  br label %205

205:                                              ; preds = %198, %195
  %206 = load %struct.quotafile*, %struct.quotafile** %9, align 8
  %207 = icmp eq %struct.quotafile* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %210 = icmp eq %struct.quotafile* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %155

212:                                              ; preds = %208, %205
  %213 = load i8*, i8** %17, align 8
  %214 = load %struct.quotafile*, %struct.quotafile** %9, align 8
  %215 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %216 = call i64 @chkquota(i8* %213, %struct.quotafile* %214, %struct.quotafile* %215)
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %14, align 4
  %221 = load %struct.quotafile*, %struct.quotafile** %9, align 8
  %222 = icmp ne %struct.quotafile* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %212
  %224 = load %struct.quotafile*, %struct.quotafile** %9, align 8
  %225 = call i32 @quota_close(%struct.quotafile* %224)
  br label %226

226:                                              ; preds = %223, %212
  %227 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %228 = icmp ne %struct.quotafile* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %231 = call i32 @quota_close(%struct.quotafile* %230)
  br label %232

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %174, %166
  br label %155

234:                                              ; preds = %155
  %235 = call i32 (...) @endfsent()
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %257, %234
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %4, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %236
  %241 = load i64, i64* %16, align 8
  %242 = load i32, i32* %11, align 4
  %243 = shl i32 1, %242
  %244 = sext i32 %243 to i64
  %245 = and i64 %241, %244
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %240
  %248 = load i32, i32* @stderr, align 4
  %249 = load i8**, i8*** %5, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = load i8*, i8** @FSTAB, align 8
  %255 = call i32 @fprintf(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %253, i8* %254)
  br label %256

256:                                              ; preds = %247, %240
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %236

260:                                              ; preds = %236
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @exit(i32 %261) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @setgrent(...) #1

declare dso_local %struct.group* @getgrent(...) #1

declare dso_local i32 @addid(i32, i32, i32, i32*) #1

declare dso_local i32 @endgrent(...) #1

declare dso_local i32 @setpwent(...) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i32 @warnx(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @checkfstab(i64, i64) #1

declare dso_local i64 @setfsent(...) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i32 @oneof(i32, i8**, i32) #1

declare dso_local i8* @blockcheck(i32) #1

declare dso_local %struct.quotafile* @quota_open(%struct.fstab*, i32, i32) #1

declare dso_local i64 @chkquota(i8*, %struct.quotafile*, %struct.quotafile*) #1

declare dso_local i32 @quota_close(%struct.quotafile*) #1

declare dso_local i32 @endfsent(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
