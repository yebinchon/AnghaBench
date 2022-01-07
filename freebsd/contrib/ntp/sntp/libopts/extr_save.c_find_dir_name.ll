; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_find_dir_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_find_dir_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8**, i8*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@NO_EQUIVALENT = common dso_local global i64 0, align 8
@NUL = common dso_local global i8 0, align 1
@DIRCH = common dso_local global i32 0, align 4
@AO_NAME_SIZE = common dso_local global i32 0, align 4
@AO_NAME_LIMIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zsave_warn = common dso_local global i8* null, align 8
@zNotDef = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"dir name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, i32*)* @find_dir_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_dir_name(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NO_EQUIVALENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  store i8* null, i8** %3, align 8
  br label %160

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @NUL, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %3, align 8
  br label %160

51:                                               ; preds = %42, %28
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %7, align 8
  %55 = load i8**, i8*** %7, align 8
  %56 = icmp eq i8** %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i8* null, i8** %3, align 8
  br label %160

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %64, %58
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %7, align 8
  br label %59

67:                                               ; preds = %59
  %68 = load i8**, i8*** %7, align 8
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 36
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %3, align 8
  br label %160

76:                                               ; preds = %67
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  %79 = load i32, i32* @DIRCH, align 4
  %80 = call i8* @strchr(i8* %78, i32 %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %117

83:                                               ; preds = %76
  %84 = load i32, i32* @AO_NAME_SIZE, align 4
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %11, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %12, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load i32, i32* @AO_NAME_LIMIT, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp sgt i64 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %113

97:                                               ; preds = %83
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = call i32 @memcpy(i8* %87, i8* %98, i64 %103)
  %105 = load i8, i8* @NUL, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds i8, i8* %87, i64 %110
  store i8 %105, i8* %111, align 1
  %112 = call i8* @getenv(i8* %87)
  store i8* %112, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %97, %96
  %114 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %13, align 4
  switch i32 %115, label %162 [
    i32 0, label %116
    i32 1, label %160
  ]

116:                                              ; preds = %113
  br label %120

117:                                              ; preds = %76
  %118 = load i8*, i8** %6, align 8
  %119 = call i8* @getenv(i8* %118)
  store i8* %119, i8** %10, align 8
  br label %120

120:                                              ; preds = %117, %116
  %121 = load i8*, i8** %10, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32, i32* @stderr, align 4
  %125 = load i8*, i8** @zsave_warn, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @fprintf(i32 %124, i8* %125, i8* %128)
  %130 = load i32, i32* @stderr, align 4
  %131 = load i8*, i8** @zNotDef, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @fprintf(i32 %130, i8* %131, i8* %132)
  store i8* null, i8** %3, align 8
  br label %160

134:                                              ; preds = %120
  %135 = load i8*, i8** %8, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i8*, i8** %10, align 8
  store i8* %138, i8** %3, align 8
  br label %160

139:                                              ; preds = %134
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = add nsw i32 %141, %143
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i64 @AGALOC(i64 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %149 = inttoptr i64 %148 to i8*
  store i8* %149, i8** %9, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %139
  store i8* null, i8** %3, align 8
  br label %160

153:                                              ; preds = %139
  %154 = load i32*, i32** %5, align 8
  store i32 1, i32* %154, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @sprintf(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %156, i8* %157)
  %159 = load i8*, i8** %9, align 8
  store i8* %159, i8** %3, align 8
  br label %160

160:                                              ; preds = %153, %152, %137, %123, %113, %74, %57, %49, %27
  %161 = load i8*, i8** %3, align 8
  ret i8* %161

162:                                              ; preds = %113
  unreachable
}

declare dso_local i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @AGALOC(i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
