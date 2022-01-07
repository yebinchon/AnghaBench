; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_cleanup_pathname_fsobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_cleanup_pathname_fsobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid empty \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pathname\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Path is \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@ARCHIVE_EXTRACT_SECURE_NODOTDOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Path contains \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"'..'\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.archive_string*, i32)* @cleanup_pathname_fsobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_pathname_fsobj(i8* %0, i32* %1, %struct.archive_string* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.archive_string*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.archive_string* %2, %struct.archive_string** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.archive_string*, %struct.archive_string** %8, align 8
  %21 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %22 = call i32 @fsobj_error(i32* %19, %struct.archive_string* %20, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %23, i32* %5, align 4
  br label %171

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NOABSOLUTEPATHS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.archive_string*, %struct.archive_string** %8, align 8
  %37 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %38 = call i32 @fsobj_error(i32* %35, %struct.archive_string* %36, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %39, i32* %5, align 4
  br label %171

40:                                               ; preds = %29
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %11, align 8
  %43 = load i8, i8* %41, align 1
  store i8 %43, i8* %12, align 1
  br label %44

44:                                               ; preds = %40, %24
  br label %45

45:                                               ; preds = %150, %80, %58, %44
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %154

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  br label %45

61:                                               ; preds = %52
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %117

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %154

74:                                               ; preds = %67
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 47
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %11, align 8
  br label %45

83:                                               ; preds = %74
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  br i1 %88, label %89, label %114

89:                                               ; preds = %83
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 47
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_NODOTDOT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.archive_string*, %struct.archive_string** %8, align 8
  %109 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %110 = call i32 @fsobj_error(i32* %107, %struct.archive_string* %108, i32 %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %111, i32* %5, align 4
  br label %171

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %61
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load i8, i8* %12, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  store i8 47, i8* %123, align 1
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %138, %125
  %127 = load i8*, i8** %11, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %11, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 47
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %11, align 8
  %141 = load i8, i8* %139, align 1
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %10, align 8
  store i8 %141, i8* %142, align 1
  br label %126

144:                                              ; preds = %136
  %145 = load i8*, i8** %11, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %154

150:                                              ; preds = %144
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %11, align 8
  %153 = load i8, i8* %151, align 1
  store i8 %153, i8* %12, align 1
  br label %45

154:                                              ; preds = %149, %73, %51
  %155 = load i8*, i8** %10, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = icmp eq i8* %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i8, i8* %12, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i8*, i8** %10, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %10, align 8
  store i8 47, i8* %162, align 1
  br label %167

164:                                              ; preds = %158
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %10, align 8
  store i8 46, i8* %165, align 1
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %154
  %169 = load i8*, i8** %10, align 8
  store i8 0, i8* %169, align 1
  %170 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %168, %106, %34, %18
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @fsobj_error(i32*, %struct.archive_string*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
