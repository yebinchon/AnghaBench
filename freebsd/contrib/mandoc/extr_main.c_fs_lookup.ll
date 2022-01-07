; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_fs_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_fs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manpaths = type { i64, i32* }
%struct.manpage = type { i8*, i32, i64, i8, i32, i32*, i32* }
%struct.stat = type { i32 }
%struct.TYPE_4__ = type { i32* }

@FORM_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/man%s/%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/cat%s/%s.0\00", align 1
@FORM_CAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s/man%s/%s/%s.%s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/man%s/%s.[01-9]*\00", align 1
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@MANDOCERR_GLOB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"outdated mandoc.db lacks %s(%s) entry, run %s %s\00", align 1
@BINM_MAKEWHATIS = common dso_local global i32 0, align 4
@NAME_FILE = common dso_local global i32 0, align 4
@NAME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.manpaths*, i64, i8*, i8*, i8*, %struct.manpage**, i64*)* @fs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_lookup(%struct.manpaths* %0, i64 %1, i8* %2, i8* %3, i8* %4, %struct.manpage** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.manpaths*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.manpage**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca %struct.manpage*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.manpaths* %0, %struct.manpaths** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.manpage** %5, %struct.manpage*** %14, align 8
  store i64* %6, i64** %15, align 8
  %22 = load i32, i32* @FORM_SRC, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %24 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 (i8**, i8*, i8*, i8*, ...) @mandoc_asprintf(i8** %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %32, i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @stat(i8* %35, %struct.stat* %16)
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  br label %152

39:                                               ; preds = %7
  %40 = load i8*, i8** %19, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %43 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 (i8**, i8*, i8*, i8*, ...) @mandoc_asprintf(i8** %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  %53 = load i8*, i8** %19, align 8
  %54 = call i32 @stat(i8* %53, %struct.stat* %16)
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* @FORM_CAT, align 4
  store i32 %57, i32* %21, align 4
  br label %152

58:                                               ; preds = %39
  %59 = load i8*, i8** %19, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %65 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 (i8**, i8*, i8*, i8*, ...) @mandoc_asprintf(i8** %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %72, i8* %73, i8* %74, i8* %75)
  %77 = load i8*, i8** %19, align 8
  %78 = call i32 @stat(i8* %77, %struct.stat* %16)
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %152

81:                                               ; preds = %63
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %81, %58
  %85 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %86 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 (i8**, i8*, i8*, i8*, ...) @mandoc_asprintf(i8** %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %92, i8* %93, i8* %94)
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 @glob(i8* %96, i32 0, i32* null, %struct.TYPE_4__* %17)
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %84
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @GLOB_NOMATCH, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* @MANDOCERR_GLOB, align 4
  %106 = load i8*, i8** %19, align 8
  %107 = load i32, i32* @errno, align 4
  %108 = call i32 @strerror(i32 %107)
  %109 = call i32 @mandoc_msg(i32 %105, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 %108)
  br label %110

110:                                              ; preds = %104, %100, %84
  %111 = load i8*, i8** %19, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i32, i32* %20, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @mandoc_strdup(i32 %118)
  store i8* %119, i8** %19, align 8
  br label %120

120:                                              ; preds = %115, %110
  %121 = call i32 @globfree(%struct.TYPE_4__* %17)
  %122 = load i32, i32* %20, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i8*, i8** %19, align 8
  %126 = call i32 @stat(i8* %125, %struct.stat* %16)
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %152

129:                                              ; preds = %124
  %130 = load i8*, i8** %19, align 8
  %131 = call i32 @free(i8* %130)
  br label %132

132:                                              ; preds = %129, %120
  %133 = load %struct.manpage**, %struct.manpage*** %14, align 8
  %134 = icmp ne %struct.manpage** %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %136, 1
  %138 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %139 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135, %132
  store i32 -1, i32* %8, align 4
  br label %221

143:                                              ; preds = %135
  %144 = load i8*, i8** %13, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 (i8**, i8*, i8*, i8*, ...) @mandoc_asprintf(i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load i8*, i8** %19, align 8
  %148 = call i32 @stat(i8* %147, %struct.stat* %16)
  store i32 %148, i32* %20, align 4
  %149 = load i8*, i8** %19, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i32, i32* %20, align 4
  store i32 %151, i32* %8, align 4
  br label %221

152:                                              ; preds = %128, %80, %56, %38
  %153 = load i8*, i8** %13, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* @BINM_MAKEWHATIS, align 4
  %156 = load %struct.manpaths*, %struct.manpaths** %9, align 8
  %157 = getelementptr inbounds %struct.manpaths, %struct.manpaths* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %153, i8* %154, i32 %155, i32 %161)
  %163 = load %struct.manpage**, %struct.manpage*** %14, align 8
  %164 = icmp eq %struct.manpage** %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %152
  %166 = load i8*, i8** %19, align 8
  %167 = call i32 @free(i8* %166)
  store i32 0, i32* %8, align 4
  br label %221

168:                                              ; preds = %152
  %169 = load %struct.manpage**, %struct.manpage*** %14, align 8
  %170 = load %struct.manpage*, %struct.manpage** %169, align 8
  %171 = load i64*, i64** %15, align 8
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = call %struct.manpage* @mandoc_reallocarray(%struct.manpage* %170, i64 %173, i32 48)
  %175 = load %struct.manpage**, %struct.manpage*** %14, align 8
  store %struct.manpage* %174, %struct.manpage** %175, align 8
  %176 = load %struct.manpage**, %struct.manpage*** %14, align 8
  %177 = load %struct.manpage*, %struct.manpage** %176, align 8
  %178 = load i64*, i64** %15, align 8
  %179 = load i64, i64* %178, align 8
  %180 = sub i64 %179, 1
  %181 = getelementptr inbounds %struct.manpage, %struct.manpage* %177, i64 %180
  store %struct.manpage* %181, %struct.manpage** %18, align 8
  %182 = load i8*, i8** %19, align 8
  %183 = load %struct.manpage*, %struct.manpage** %18, align 8
  %184 = getelementptr inbounds %struct.manpage, %struct.manpage* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.manpage*, %struct.manpage** %18, align 8
  %186 = getelementptr inbounds %struct.manpage, %struct.manpage* %185, i32 0, i32 6
  store i32* null, i32** %186, align 8
  %187 = load %struct.manpage*, %struct.manpage** %18, align 8
  %188 = getelementptr inbounds %struct.manpage, %struct.manpage* %187, i32 0, i32 5
  store i32* null, i32** %188, align 8
  %189 = load i32, i32* @NAME_FILE, align 4
  %190 = load i32, i32* @NAME_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load %struct.manpage*, %struct.manpage** %18, align 8
  %193 = getelementptr inbounds %struct.manpage, %struct.manpage* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.manpage*, %struct.manpage** %18, align 8
  %196 = getelementptr inbounds %struct.manpage, %struct.manpage* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load i8*, i8** %11, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp sge i32 %199, 49
  br i1 %200, label %201, label %212

201:                                              ; preds = %168
  %202 = load i8*, i8** %11, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sle i32 %204, 57
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i8*, i8** %11, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = sub nsw i32 %209, 49
  %211 = add nsw i32 %210, 1
  br label %213

212:                                              ; preds = %201, %168
  br label %213

213:                                              ; preds = %212, %206
  %214 = phi i32 [ %211, %206 ], [ 10, %212 ]
  %215 = trunc i32 %214 to i8
  %216 = load %struct.manpage*, %struct.manpage** %18, align 8
  %217 = getelementptr inbounds %struct.manpage, %struct.manpage* %216, i32 0, i32 3
  store i8 %215, i8* %217, align 8
  %218 = load i32, i32* %21, align 4
  %219 = load %struct.manpage*, %struct.manpage** %18, align 8
  %220 = getelementptr inbounds %struct.manpage, %struct.manpage* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %213, %165, %143, %142
  %222 = load i32, i32* %8, align 4
  ret i32 %222
}

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @mandoc_strdup(i32) #1

declare dso_local i32 @globfree(%struct.TYPE_4__*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i32, i32) #1

declare dso_local %struct.manpage* @mandoc_reallocarray(%struct.manpage*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
