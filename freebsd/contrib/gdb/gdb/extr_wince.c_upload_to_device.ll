; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_upload_to_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_upload_to_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@remote_directory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"\\gdb\00", align 1
@upload_to_device.remotefile = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"/\\\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"no filename found to upload - %s.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@upload_when = common dso_local global i64 0, align 8
@UPLOAD_NEVER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@TRUE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"couldn't open %s\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"error opening file \22%s\22.  Windows error %d.\00", align 1
@UPLOAD_ALWAYS = common dso_local global i64 0, align 8
@ERROR_ALREADY_EXISTS = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"error writing to remote device - %d.\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"error closing remote file - %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @upload_to_device(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca [4096 x i8], align 16
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load i64, i64* @remote_directory, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = inttoptr i64 %22 to i8*
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %26 ]
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %12, align 8
  br label %30

30:                                               ; preds = %34, %27
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @strpbrk(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %4, align 8
  br label %30

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %46, %48
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** @upload_to_device.remotefile, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @xrealloc(i8* %51, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** @upload_to_device.remotefile, align 8
  %55 = load i8*, i8** @upload_to_device.remotefile, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i8*, i8** @upload_to_device.remotefile, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8*, i8** @upload_to_device.remotefile, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strcat(i8* %60, i8* %61)
  %63 = load i64, i64* @upload_when, align 8
  %64 = load i64, i64* @UPLOAD_NEVER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = load i8*, i8** @upload_to_device.remotefile, align 8
  store i8* %67, i8** %3, align 8
  br label %159

68:                                               ; preds = %44
  %69 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = call i32 @openp(i32 %69, i32 %70, i8* %71, i32 %72, i32 0, i32* null)
  store i32 %73, i32* %18, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %18, align 4
  %80 = call i64 @fstat(i32 %79, %struct.stat* %17)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  store i64 -1, i64* %83, align 8
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @towide(i8* %85, i32* null)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @CeCreateDirectory(i32 %87, i32* null)
  %89 = load i8*, i8** @upload_to_device.remotefile, align 8
  %90 = call i32 @towide(i8* %89, i32* null)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @GENERIC_READ, align 4
  %93 = load i32, i32* @GENERIC_WRITE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @OPEN_ALWAYS, align 4
  %96 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %97 = call i32* @CeCreateFile(i32 %91, i32 %94, i32 0, i32* null, i32 %95, i32 %96, i32* null)
  store i32* %97, i32** %6, align 8
  %98 = call i8* (...) @CeGetLastError()
  store i8* %98, i8** %11, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %84
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %104 = icmp eq i32* %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101, %84
  %106 = load i8*, i8** @upload_to_device.remotefile, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @CeGetFileTime(i32* %110, i32* %13, i32* %14, i32* %15)
  %112 = call i64 @to_time_t(i32* %15)
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* @upload_when, align 8
  %114 = load i64, i64* @UPLOAD_ALWAYS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %109
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** @ERROR_ALREADY_EXISTS, align 8
  %119 = icmp ne i8* %117, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @CeGetFileTime(i32* %121, i32* %13, i32* %14, i32* %15)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = call i64 @to_time_t(i32* %15)
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %124, %120, %116, %109
  br label %130

130:                                              ; preds = %146, %129
  %131 = load i32, i32* %18, align 4
  %132 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %133 = call i32 @read(i32 %131, i8* %132, i32 4096)
  store i32 %133, i32* %21, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @CeWriteFile(i32* %136, i8* %137, i8* %140, i8** %19, i32* null)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %135
  %144 = call i8* (...) @CeGetLastError()
  %145 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %143, %135
  br label %130

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @close(i32 %149)
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @CeCloseHandle(i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = call i8* (...) @CeGetLastError()
  %156 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %154, %148
  %158 = load i8*, i8** @upload_to_device.remotefile, align 8
  store i8* %158, i8** %3, align 8
  br label %159

159:                                              ; preds = %157, %66
  %160 = load i8*, i8** %3, align 8
  ret i8* %160
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @openp(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @towide(i8*, i32*) #1

declare dso_local i32 @CeCreateDirectory(i32, i32*) #1

declare dso_local i32* @CeCreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i8* @CeGetLastError(...) #1

declare dso_local i32 @CeGetFileTime(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @to_time_t(i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @CeWriteFile(i32*, i8*, i8*, i8**, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @CeCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
