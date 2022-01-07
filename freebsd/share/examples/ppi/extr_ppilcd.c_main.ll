; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_driver = type { i32, i32 (i8*, i8*)*, i32, i32* }

@lcd_drivertab = common dso_local global %struct.lcd_driver* null, align 8
@DEFAULT_DEVICE = common dso_local global i8* null, align 8
@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"LCD_TYPE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Dd:f:o:v\00", align 1
@debuglevel = common dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@vflag = common dso_local global i32 0, align 4
@optind = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LCD driver '%s' not known\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Driver selected for %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"reading input from %d argument%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"reading input from stdin\00", align 1
@stdin = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.lcd_driver*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load %struct.lcd_driver*, %struct.lcd_driver** @lcd_drivertab, align 8
  %14 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %13, i64 0
  store %struct.lcd_driver* %14, %struct.lcd_driver** %6, align 8
  %15 = load i8*, i8** @DEFAULT_DEVICE, align 8
  store i8* %15, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 47)
  store i8* %19, i8** @progname, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** @progname, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** @progname, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** @progname, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %49, %28
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %47 [
    i32 68, label %37
    i32 100, label %40
    i32 102, label %42
    i32 111, label %44
    i32 118, label %46
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @debuglevel, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @debuglevel, align 4
  br label %49

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** %7, align 8
  br label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** %9, align 8
  br label %49

44:                                               ; preds = %35
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** %10, align 8
  br label %49

46:                                               ; preds = %35
  store i32 1, i32* @vflag, align 4
  br label %49

47:                                               ; preds = %35
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %46, %44, %42, %40, %37
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* @optind, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @optind, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8** %57, i8*** %5, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %96

60:                                               ; preds = %50
  store %struct.lcd_driver* null, %struct.lcd_driver** %6, align 8
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %85, %60
  %62 = load %struct.lcd_driver*, %struct.lcd_driver** @lcd_drivertab, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %62, i64 %64
  %66 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.lcd_driver*, %struct.lcd_driver** @lcd_drivertab, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %71, i64 %73
  %75 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @strcmp(i8* %70, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %69
  %80 = load %struct.lcd_driver*, %struct.lcd_driver** @lcd_drivertab, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %80, i64 %82
  store %struct.lcd_driver* %83, %struct.lcd_driver** %6, align 8
  br label %88

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %61

88:                                               ; preds = %79, %61
  %89 = load %struct.lcd_driver*, %struct.lcd_driver** %6, align 8
  %90 = icmp eq %struct.lcd_driver* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = call i32 (...) @usage()
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %50
  %97 = load %struct.lcd_driver*, %struct.lcd_driver** %6, align 8
  %98 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load %struct.lcd_driver*, %struct.lcd_driver** %6, align 8
  %102 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %101, i32 0, i32 1
  %103 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %102, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 %103(i8* %104, i8* %105)
  %107 = load %struct.lcd_driver*, %struct.lcd_driver** %6, align 8
  %108 = getelementptr inbounds %struct.lcd_driver, %struct.lcd_driver* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @atexit(i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %147

113:                                              ; preds = %96
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp sgt i32 %115, 1
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %119 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %114, i8* %118)
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %143, %113
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %8, align 8
  br label %130

130:                                              ; preds = %139, %124
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.lcd_driver*, %struct.lcd_driver** %6, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @do_char(%struct.lcd_driver* %135, i8 signext %137)
  br label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %8, align 8
  br label %130

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %120

146:                                              ; preds = %120
  br label %163

147:                                              ; preds = %96
  %148 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32, i32* @stdin, align 4
  %150 = load i32, i32* @_IONBF, align 4
  %151 = call i32 @setvbuf(i32 %149, i32* null, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %157, %147
  %153 = load i32, i32* @stdin, align 4
  %154 = call i32 @fgetc(i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* @EOF, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.lcd_driver*, %struct.lcd_driver** %6, align 8
  %159 = load i32, i32* %11, align 4
  %160 = trunc i32 %159 to i8
  %161 = call i32 @do_char(%struct.lcd_driver* %158, i8 signext %160)
  br label %152

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %146
  %164 = load i32, i32* @EX_OK, align 4
  %165 = call i32 @exit(i32 %164) #3
  unreachable
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @do_char(%struct.lcd_driver*, i8 signext) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @fgetc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
