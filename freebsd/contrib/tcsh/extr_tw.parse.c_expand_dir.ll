; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_expand_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_expand_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32, i8* }

@STRdot = common dso_local global i8* null, align 8
@symlinks = common dso_local global i64 0, align 8
@SYM_IGNORE = common dso_local global i64 0, align 8
@SYM_EXPAND = common dso_local global i64 0, align 8
@SPELL = common dso_local global i64 0, align 8
@SearchNoDirErr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"\0A%S %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"unreadable\00", align 1
@NeedsRedraw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.Strbuf*, i32**, i64)* @expand_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_dir(i8* %0, %struct.Strbuf* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Strbuf*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.Strbuf* %1, %struct.Strbuf** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @dollar(i8* %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i32 @cleanup_push(i8* %15, i32 (i8*)* @xfree)
  %17 = load i8*, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %4
  %20 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i64 @tilde(%struct.Strbuf* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %26 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %31 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i8*, i8** @STRdot, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i8* [ %32, %29 ], [ %34, %33 ]
  %37 = load i64, i64* @symlinks, align 8
  %38 = load i64, i64* @SYM_IGNORE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @symlinks, align 8
  %42 = load i64, i64* @SYM_EXPAND, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i1 [ true, %35 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i8* @dnormalize(i8* %36, i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @short2str(i8* %50)
  %52 = call i32* @opendir(i32 %51)
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  %54 = icmp eq i32* %52, null
  br i1 %54, label %55, label %107

55:                                               ; preds = %49, %44, %19, %4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @xfree(i8* %56)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @SPELL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* @SearchNoDirErr, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %55
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @cleanup_until(i8* %65)
  store i32 -2, i32* %5, align 4
  br label %168

67:                                               ; preds = %61
  %68 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %69 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %74 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  br label %85

76:                                               ; preds = %67
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  br label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i8* [ %80, %79 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %72
  %86 = phi i8* [ %75, %72 ], [ %84, %83 ]
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @ENOTDIR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @CGETS(i32 30, i32 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %102

92:                                               ; preds = %85
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @ENOENT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @CGETS(i32 30, i32 11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %100

98:                                               ; preds = %92
  %99 = call i32 @CGETS(i32 30, i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  br label %102

102:                                              ; preds = %100, %90
  %103 = phi i32 [ %91, %90 ], [ %101, %100 ]
  %104 = call i32 @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %86, i32 %103)
  store i32 1, i32* @NeedsRedraw, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @cleanup_until(i8* %105)
  store i32 -1, i32* %5, align 4
  br label %168

107:                                              ; preds = %49
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @cleanup_until(i8* %108)
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %167

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %164

117:                                              ; preds = %112
  %118 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %119 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %124 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %127 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 47
  br label %135

135:                                              ; preds = %122, %117
  %136 = phi i1 [ false, %117 ], [ %134, %122 ]
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %12, align 4
  %138 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %139 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @Strbuf_append(%struct.Strbuf* %140, i8* %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %135
  %146 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %147 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %150 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 47
  br i1 %157, label %158, label %161

158:                                              ; preds = %145
  %159 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %160 = call i32 @Strbuf_append1(%struct.Strbuf* %159, i8 signext 47)
  br label %161

161:                                              ; preds = %158, %145, %135
  %162 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %163 = call i32 @Strbuf_terminate(%struct.Strbuf* %162)
  br label %164

164:                                              ; preds = %161, %112
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @xfree(i8* %165)
  br label %167

167:                                              ; preds = %164, %107
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %102, %64
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i8* @dollar(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @tilde(%struct.Strbuf*, i8*) #1

declare dso_local i8* @dnormalize(i8*, i32) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @xprintf(i8*, i8*, i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i8*) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
