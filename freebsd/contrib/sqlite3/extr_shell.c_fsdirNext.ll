; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_fsdirNext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_fsdirNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.dirent = type { i8* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot read directory: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot stat file: %s\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fsdirNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsdirNext(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.dirent*, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @S_ISDIR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %110

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 16
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @sqlite3_realloc64(%struct.TYPE_8__* %45, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %10, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = icmp eq %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %52, i32* %2, align 4
  br label %228

53:                                               ; preds = %36
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = mul i64 16, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(%struct.TYPE_8__* %59, i32 0, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %53, %26
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %7, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @opendir(i64 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %75
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @fsdirSetErrmsg(%struct.TYPE_7__* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %108, i32* %2, align 4
  br label %228

109:                                              ; preds = %75
  br label %110

110:                                              ; preds = %109, %1
  br label %111

111:                                              ; preds = %203, %164, %155, %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %220

116:                                              ; preds = %111
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %123
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %11, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call %struct.dirent* @readdir(i64 %127)
  store %struct.dirent* %128, %struct.dirent** %12, align 8
  %129 = load %struct.dirent*, %struct.dirent** %12, align 8
  %130 = icmp ne %struct.dirent* %129, null
  br i1 %130, label %131, label %203

131:                                              ; preds = %116
  %132 = load %struct.dirent*, %struct.dirent** %12, align 8
  %133 = getelementptr inbounds %struct.dirent, %struct.dirent* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 46
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = load %struct.dirent*, %struct.dirent** %12, align 8
  %141 = getelementptr inbounds %struct.dirent, %struct.dirent* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 46
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.dirent*, %struct.dirent** %12, align 8
  %149 = getelementptr inbounds %struct.dirent, %struct.dirent* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %111

156:                                              ; preds = %147, %139
  %157 = load %struct.dirent*, %struct.dirent** %12, align 8
  %158 = getelementptr inbounds %struct.dirent, %struct.dirent* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %111

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %131
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @sqlite3_free(i64 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.dirent*, %struct.dirent** %12, align 8
  %175 = getelementptr inbounds %struct.dirent, %struct.dirent* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %173, i8* %176)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %166
  %185 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %185, i32* %2, align 4
  br label %228

186:                                              ; preds = %166
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = call i64 @fileLinkStat(i64 %189, %struct.TYPE_9__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @fsdirSetErrmsg(%struct.TYPE_7__* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %198)
  %200 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %200, i32* %2, align 4
  br label %228

201:                                              ; preds = %186
  %202 = load i32, i32* @SQLITE_OK, align 4
  store i32 %202, i32* %2, align 4
  br label %228

203:                                              ; preds = %116
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @closedir(i64 %206)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @sqlite3_free(i64 %210)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %217, align 8
  br label %111

220:                                              ; preds = %111
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @sqlite3_free(i64 %223)
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* @SQLITE_OK, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %220, %201, %194, %184, %102, %51
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @opendir(i64) #1

declare dso_local i32 @fsdirSetErrmsg(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local %struct.dirent* @readdir(i64) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i64 @sqlite3_mprintf(i8*, i64, i8*) #1

declare dso_local i64 @fileLinkStat(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @closedir(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
