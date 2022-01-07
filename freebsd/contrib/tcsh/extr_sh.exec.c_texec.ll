; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_texec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_texec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32** }

@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@ERR_ARCH = common dso_local global i32 0, align 4
@STRshell = common dso_local global i32 0, align 4
@aliases = common dso_local global i32 0, align 4
@STR_SHELLPATH = common dso_local global i32* null, align 8
@ERR_SYSTEM = common dso_local global i32 0, align 4
@exerr = common dso_local global i32 0, align 4
@expath = common dso_local global i32** null, align 8
@EISDIR = common dso_local global i32 0, align 4
@STR_BSHELL = common dso_local global i32* null, align 8
@Vexpath = common dso_local global i32** null, align 8
@Vt = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**)* @texec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texec(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %16 = load i32**, i32*** %4, align 8
  %17 = call i8** @short2blk(i32** %16)
  store i8** %17, i8*** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @short2str(i32* %18)
  store i8* %19, i8** %6, align 8
  store i32 0, i32* @errno, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @execv(i8* %20, i8** %21)
  %23 = load i8**, i8*** %5, align 8
  %24 = bitcast i8** %23 to i32**
  %25 = call i32 @blkfree(i32** %24)
  %26 = load i32, i32* @errno, align 4
  switch i32 %26, label %151 [
    i32 129, label %27
    i32 128, label %144
    i32 130, label %150
  ]

27:                                               ; preds = %2
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = load i32, i32* @O_LARGEFILE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @xopen(i8* %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %70

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %37 = call i32 @xread(i32 %35, i8* %36, i32 2)
  store i32 %37, i32* %14, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @isprint(i8 zeroext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 9
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @xclose(i32 %56)
  %58 = load i32, i32* @ERR_ARCH, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 @stderror(i32 %58, i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %54, %49, %44, %39
  br label %69

64:                                               ; preds = %34
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* @STRshell, align 4
  %72 = call %struct.varent* @adrof1(i32 %71, i32* @aliases)
  store %struct.varent* %72, %struct.varent** %7, align 8
  %73 = load %struct.varent*, %struct.varent** %7, align 8
  %74 = icmp eq %struct.varent* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.varent*, %struct.varent** %7, align 8
  %77 = getelementptr inbounds %struct.varent, %struct.varent* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = icmp eq i32** %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %75, %70
  %81 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32** %81, i32*** %8, align 8
  %82 = load i32, i32* @STRshell, align 4
  %83 = call i32 @adrof(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @STRshell, align 4
  %87 = call i32* @varval(i32 %86)
  br label %90

88:                                               ; preds = %80
  %89 = load i32*, i32** @STR_SHELLPATH, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32* [ %87, %85 ], [ %89, %88 ]
  %92 = load i32**, i32*** %8, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  store i32* %91, i32** %93, align 8
  %94 = load i32**, i32*** %8, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  store i32* null, i32** %95, align 8
  %96 = load i32**, i32*** %8, align 8
  %97 = call i32** @saveblk(i32** %96)
  store i32** %97, i32*** %8, align 8
  br label %103

98:                                               ; preds = %75
  %99 = load %struct.varent*, %struct.varent** %7, align 8
  %100 = getelementptr inbounds %struct.varent, %struct.varent* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = call i32** @saveblk(i32** %101)
  store i32** %102, i32*** %8, align 8
  br label %103

103:                                              ; preds = %98, %90
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @xclose(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32**, i32*** %4, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %12, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i32**, i32*** %4, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  store i32* %113, i32** %115, align 8
  %116 = load i32**, i32*** %4, align 8
  store i32** %116, i32*** %13, align 8
  %117 = load i32**, i32*** %8, align 8
  %118 = load i32**, i32*** %4, align 8
  %119 = call i32** @blkspl(i32** %117, i32** %118)
  store i32** %119, i32*** %4, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = load i32**, i32*** %13, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 0
  store i32* %120, i32** %122, align 8
  %123 = load i32**, i32*** %4, align 8
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %3, align 8
  %125 = load i32**, i32*** %4, align 8
  %126 = call i8** @short2blk(i32** %125)
  store i8** %126, i8*** %5, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = call i8* @short2str(i32* %127)
  store i8* %128, i8** %6, align 8
  %129 = load i32**, i32*** %4, align 8
  %130 = call i32 @xfree(i32** %129)
  %131 = load i32**, i32*** %8, align 8
  %132 = call i32 @blkfree(i32** %131)
  %133 = load i8*, i8** %6, align 8
  %134 = load i8**, i8*** %5, align 8
  %135 = call i32 @execv(i8* %133, i8** %134)
  %136 = load i8**, i8*** %5, align 8
  %137 = bitcast i8** %136 to i32**
  %138 = call i32 @blkfree(i32** %137)
  %139 = load i32, i32* @ERR_SYSTEM, align 4
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @strerror(i32 %141)
  %143 = call i32 @stderror(i32 %139, i8* %140, i32 %142)
  br label %162

144:                                              ; preds = %2
  %145 = load i32, i32* @ERR_SYSTEM, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @strerror(i32 %147)
  %149 = call i32 @stderror(i32 %145, i8* %146, i32 %148)
  br label %162

150:                                              ; preds = %2
  br label %162

151:                                              ; preds = %2
  %152 = load i32, i32* @exerr, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* @errno, align 4
  %156 = call i32 @strerror(i32 %155)
  store i32 %156, i32* @exerr, align 4
  %157 = load i32**, i32*** @expath, align 8
  %158 = call i32 @xfree(i32** %157)
  %159 = load i32*, i32** %3, align 8
  %160 = call i32** @Strsave(i32* %159)
  store i32** %160, i32*** @expath, align 8
  br label %161

161:                                              ; preds = %154, %151
  br label %162

162:                                              ; preds = %161, %150, %144, %109
  ret void
}

declare dso_local i8** @short2blk(i32**) #1

declare dso_local i8* @short2str(i32*) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @blkfree(i32**) #1

declare dso_local i32 @xopen(i8*, i32) #1

declare dso_local i32 @xread(i32, i8*, i32) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @xclose(i32) #1

declare dso_local i32 @stderror(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.varent* @adrof1(i32, i32*) #1

declare dso_local i32 @adrof(i32) #1

declare dso_local i32* @varval(i32) #1

declare dso_local i32** @saveblk(i32**) #1

declare dso_local i32** @blkspl(i32**, i32**) #1

declare dso_local i32 @xfree(i32**) #1

declare dso_local i32** @Strsave(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
