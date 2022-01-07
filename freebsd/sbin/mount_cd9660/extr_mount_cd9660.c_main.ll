; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_cd9660/extr_mount_cd9660.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_cd9660/extr_mount_cd9660.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@__const.main.fstype = private unnamed_addr constant [7 x i8] c"cd9660\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"begjo:rs:vC:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"brokenjoliet\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"extatt\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gens\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"nojoliet\00", align 1
@optarg = common dso_local global i8* null, align 8
@mopts = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"norrip\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"cd9660_iconv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"kiconv\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"could not determine starting sector, using very first session\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"using starting sector %d\0A\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ssector\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [7 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = bitcast [7 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.fstype, i32 0, i32 0), i64 7, i1 false)
  store %struct.iovec* null, %struct.iovec** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %17, align 4
  br label %24

24:                                               ; preds = %75, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %76

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %73 [
    i32 98, label %31
    i32 101, label %33
    i32 103, label %35
    i32 106, label %37
    i32 111, label %39
    i32 114, label %55
    i32 115, label %57
    i32 118, label %60
    i32 67, label %63
    i32 63, label %72
  ]

31:                                               ; preds = %29
  %32 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 -1)
  br label %75

33:                                               ; preds = %29
  %34 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null, i64 -1)
  br label %75

35:                                               ; preds = %29
  %36 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 -1)
  br label %75

37:                                               ; preds = %29
  %38 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* null, i64 -1)
  br label %75

39:                                               ; preds = %29
  %40 = load i8*, i8** @optarg, align 8
  %41 = load i32, i32* @mopts, align 4
  %42 = call i32 @getmntopts(i8* %40, i32 %41, i32* %9, i32* null)
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 61)
  store i8* %44, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** %12, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* %52, i8* %53, i64 -1)
  br label %75

55:                                               ; preds = %29
  %56 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 -1)
  br label %75

57:                                               ; preds = %29
  %58 = load i8*, i8** @optarg, align 8
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %17, align 4
  br label %75

60:                                               ; preds = %29
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  br label %75

63:                                               ; preds = %29
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 @set_charset(%struct.iovec** %6, i32* %7, i8* %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EX_OSERR, align 4
  %69 = call i32 (i32, i8*, ...) @err(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %63
  %71 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* null, i64 -1)
  br label %75

72:                                               ; preds = %29
  br label %73

73:                                               ; preds = %29, %72
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %73, %70, %60, %57, %55, %51, %37, %35, %33, %31
  br label %24

76:                                               ; preds = %24
  %77 = load i64, i64* @optind, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  %82 = load i64, i64* @optind, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 %82
  store i8** %84, i8*** %5, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %76
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %10, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i64 @checkpath(i8* %96, i8* %22)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %22)
  br label %101

101:                                              ; preds = %99, %89
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @rmslashes(i8* %102, i8* %103)
  %105 = load i32, i32* %17, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @get_ssector(i8* %108)
  store i32 %109, i32* %17, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111
  store i32 0, i32* %17, align 4
  br label %124

117:                                              ; preds = %107
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %116
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* @MNT_RDONLY, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0
  %130 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %129, i64 -1)
  %131 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %22, i64 -1)
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %132, i64 -1)
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %134)
  %136 = load %struct.iovec*, %struct.iovec** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @nmount(%struct.iovec* %136, i32 %137, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %125
  %145 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i64) #3

declare dso_local i32 @getmntopts(i8*, i32, i32*, i32*) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32 @atoi(i8*) #3

declare dso_local i32 @set_charset(%struct.iovec**, i32*, i8*) #3

declare dso_local i32 @err(i32, i8*, ...) #3

declare dso_local i32 @usage(...) #3

declare dso_local i64 @checkpath(i8*, i8*) #3

declare dso_local i32 @rmslashes(i8*, i8*) #3

declare dso_local i32 @get_ssector(i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @build_iovec_argf(%struct.iovec**, i32*, i8*, i8*, i32) #3

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
