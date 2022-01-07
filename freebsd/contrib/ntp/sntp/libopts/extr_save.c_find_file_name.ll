; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_find_file_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_find_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.stat = type { i8* }

@AG_PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@zsave_warn = common dso_local global i8* null, align 8
@zNoStat = common dso_local global i8* null, align 8
@DIRCH = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i8* null, align 8
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [10 x i8] c"file name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i32*)* @find_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_file_name(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = call i8* @find_dir_name(%struct.TYPE_4__* %15, i32* %7)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %188

20:                                               ; preds = %2
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @stat(i8* %21, %struct.stat* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %103

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @AG_PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOENT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %94, %71, %33
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** @zsave_warn, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %35, i8* %36, i64 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** @zNoStat, align 8
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = call i32 @strerror(i64 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %42, i8* %43, i64 %44, i32 %46, i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @AGFREE(i8* %52)
  br label %54

54:                                               ; preds = %51, %34
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %98

55:                                               ; preds = %25
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @DIRCH, align 4
  %58 = call i8* @strrchr(i8* %56, i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** @S_IFREG, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  store i32 2, i32* %12, align 4
  br label %98

64:                                               ; preds = %55
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = icmp uge i64 %69, %27
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %34

72:                                               ; preds = %64
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = call i32 @memcpy(i8* %29, i8* %73, i64 %78)
  %80 = load i8, i8* @NUL, align 1
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = getelementptr inbounds i8, i8* %29, i64 %85
  store i8 %80, i8* %86, align 1
  %87 = call i64 @stat(i8* %29, %struct.stat* %6)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %72
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @S_ISDIR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89, %72
  br label %34

95:                                               ; preds = %89
  %96 = load i8*, i8** @S_IFREG, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %61, %54
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %190 [
    i32 0, label %101
    i32 1, label %188
    i32 2, label %102
  ]

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %98
  br label %103

103:                                              ; preds = %102, %20
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @S_ISDIR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %162

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = add nsw i32 %110, %114
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i64 @AGALOC(i64 %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @sprintf(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %122, i8* %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %108
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @AGFREE(i8* %130)
  br label %132

132:                                              ; preds = %129, %108
  %133 = load i8*, i8** %14, align 8
  store i8* %133, i8** %8, align 8
  store i32 1, i32* %7, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = call i64 @stat(i8* %134, %struct.stat* %6)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %132
  %138 = load i64, i64* @errno, align 8
  %139 = load i64, i64* @ENOENT, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %137
  %142 = load i32, i32* @stderr, align 4
  %143 = load i8*, i8** @zsave_warn, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %142, i8* %143, i64 %147)
  %149 = load i32, i32* @stderr, align 4
  %150 = load i8*, i8** @zNoStat, align 8
  %151 = load i64, i64* @errno, align 8
  %152 = load i64, i64* @errno, align 8
  %153 = call i32 @strerror(i64 %152)
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %149, i8* %150, i64 %151, i32 %153, i8* %154)
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @AGFREE(i8* %156)
  store i8* null, i8** %3, align 8
  br label %188

158:                                              ; preds = %137
  %159 = load i8*, i8** @S_IFREG, align 8
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  br label %161

161:                                              ; preds = %158, %132
  br label %162

162:                                              ; preds = %161, %103
  %163 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @S_ISREG(i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8*, i8** @zsave_warn, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %168, i8* %169, i64 %173, i8* %174)
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %167
  %179 = load i8*, i8** %8, align 8
  %180 = call i32 @AGFREE(i8* %179)
  br label %181

181:                                              ; preds = %178, %167
  store i8* null, i8** %3, align 8
  br label %188

182:                                              ; preds = %162
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @unlink(i8* %183)
  %185 = load i32, i32* %7, align 4
  %186 = load i32*, i32** %5, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i8*, i8** %8, align 8
  store i8* %187, i8** %3, align 8
  br label %188

188:                                              ; preds = %182, %181, %141, %98, %19
  %189 = load i8*, i8** %3, align 8
  ret i8* %189

190:                                              ; preds = %98
  unreachable
}

declare dso_local i8* @find_dir_name(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @AGFREE(i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @S_ISDIR(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @AGALOC(i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @S_ISREG(i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
