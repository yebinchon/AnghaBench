; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_ls.c_command_ls.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_ls.c_command_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }
%struct.dirent = type { i8*, i32 }

@CMD_OK = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %c %8d %s\0A\00", align 1
@typestr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c" %c  %s\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_ls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_ls(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @CMD_OK, align 4
  store i32 %15, i32* %12, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %13, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %25 [
    i32 108, label %23
    i32 63, label %24
  ]

23:                                               ; preds = %21
  store i32 1, i32* %14, align 4
  br label %27

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %21, %24
  %26 = load i32, i32* @CMD_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %221

27:                                               ; preds = %23
  br label %16

28:                                               ; preds = %16
  %29 = load i32, i32* @optind, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i8**, i8*** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* @optind, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %45

41:                                               ; preds = %28
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @stat(i8* %46, %struct.stat* %7)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @S_ISDIR(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %82, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32*, i32** @typestr, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 12
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67, i8* %68)
  br label %80

70:                                               ; preds = %54
  %71 = load i32*, i32** @typestr, align 8
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 12
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %70, %57
  %81 = load i32, i32* @CMD_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %221

82:                                               ; preds = %49, %45
  %83 = call i32 @ls_getdir(i8** %10)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @CMD_ERROR, align 4
  store i32 %87, i32* %12, align 4
  br label %210

88:                                               ; preds = %82
  %89 = call i32 (...) @pager_open()
  %90 = load i8*, i8** %10, align 8
  %91 = call i64 @pager_output(i8* %90)
  %92 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %208, %88
  %94 = load i32, i32* %6, align 4
  %95 = call %struct.dirent* @readdirfd(i32 %94)
  store %struct.dirent* %95, %struct.dirent** %8, align 8
  %96 = icmp ne %struct.dirent* %95, null
  br i1 %96, label %97, label %209

97:                                               ; preds = %93
  %98 = load %struct.dirent*, %struct.dirent** %8, align 8
  %99 = getelementptr inbounds %struct.dirent, %struct.dirent* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %208

103:                                              ; preds = %97
  %104 = load %struct.dirent*, %struct.dirent** %8, align 8
  %105 = getelementptr inbounds %struct.dirent, %struct.dirent* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %208

109:                                              ; preds = %103
  %110 = load %struct.dirent*, %struct.dirent** %8, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %148

117:                                              ; preds = %114, %109
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i64 @strlen(i8* %120)
  %122 = load %struct.dirent*, %struct.dirent** %8, align 8
  %123 = getelementptr inbounds %struct.dirent, %struct.dirent* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strlen(i8* %124)
  %126 = add nsw i64 %121, %125
  %127 = add nsw i64 %126, 2
  %128 = call i8* @malloc(i64 %127)
  store i8* %128, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %117
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.dirent*, %struct.dirent** %8, align 8
  %135 = getelementptr inbounds %struct.dirent, %struct.dirent* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @sprintf(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %133, i8* %136)
  %138 = load i8*, i8** %9, align 8
  %139 = call i64 @stat(i8* %138, %struct.stat* %7)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %131
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %144, %117
  br label %148

148:                                              ; preds = %147, %114
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %148
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %153 = load i32*, i32** @typestr, align 8
  %154 = load %struct.dirent*, %struct.dirent** %8, align 8
  %155 = getelementptr inbounds %struct.dirent, %struct.dirent* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.dirent*, %struct.dirent** %8, align 8
  %160 = getelementptr inbounds %struct.dirent, %struct.dirent* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  br label %166

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 12
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi i32 [ %161, %158 ], [ %165, %162 ]
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %153, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.dirent*, %struct.dirent** %8, align 8
  %175 = getelementptr inbounds %struct.dirent, %struct.dirent* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %152, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %173, i8* %176)
  br label %202

178:                                              ; preds = %148
  %179 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %180 = load i32*, i32** @typestr, align 8
  %181 = load %struct.dirent*, %struct.dirent** %8, align 8
  %182 = getelementptr inbounds %struct.dirent, %struct.dirent* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.dirent*, %struct.dirent** %8, align 8
  %187 = getelementptr inbounds %struct.dirent, %struct.dirent* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  br label %193

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = ashr i32 %191, 12
  br label %193

193:                                              ; preds = %189, %185
  %194 = phi i32 [ %188, %185 ], [ %192, %189 ]
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %180, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.dirent*, %struct.dirent** %8, align 8
  %199 = getelementptr inbounds %struct.dirent, %struct.dirent* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %179, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %197, i8* %200)
  br label %202

202:                                              ; preds = %193, %166
  %203 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %204 = call i64 @pager_output(i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %210

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207, %103, %97
  br label %93

209:                                              ; preds = %93
  br label %210

210:                                              ; preds = %209, %206, %86
  %211 = call i32 (...) @pager_close()
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, -1
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @close(i32 %215)
  br label %217

217:                                              ; preds = %214, %210
  %218 = load i8*, i8** %10, align 8
  %219 = call i32 @free(i8* %218)
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %217, %80, %25
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @ls_getdir(i8**) #1

declare dso_local i32 @pager_open(...) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local %struct.dirent* @readdirfd(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @pager_close(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
