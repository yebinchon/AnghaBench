; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@AUDITFILTERD_CONFFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"c:dp:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@debug = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@AUDITFILTERD_PIPEFILE = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"open:%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stat: %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fstat: %s not device\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i8*, i8** @AUDITFILTERD_CONFFILE, align 8
  store i8* %14, i8** %8, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  br label %15

15:                                               ; preds = %49, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %13, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %47 [
    i32 99, label %22
    i32 100, label %24
    i32 116, label %27
    i32 112, label %37
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %8, align 8
  br label %49

24:                                               ; preds = %20
  %25 = load i32, i32* @debug, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @debug, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %27
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %7, align 8
  br label %49

37:                                               ; preds = %20
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %6, align 8
  br label %49

47:                                               ; preds = %20
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %45, %35, %24, %22
  br label %15

50:                                               ; preds = %15
  %51 = load i64, i64* @optind, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i64, i64* @optind, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56
  store i8** %58, i8*** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %50
  %64 = load i8*, i8** %6, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i8*, i8** @AUDITFILTERD_PIPEFILE, align 8
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %69, %66, %63
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @O_RDONLY, align 4
  %77 = call i32 @open(i8* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @fstat(i32 %84, %struct.stat* %11)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @S_ISCHR(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %108

99:                                               ; preds = %71
  %100 = load i8*, i8** %7, align 8
  %101 = call i32* @fopen(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %101, i32** %9, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i8*, i8** %8, align 8
  %110 = call i32* @fopen(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %110, i32** %10, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %108
  %117 = call i32 (...) @auditfilterd_init()
  %118 = load i8*, i8** %8, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = call i64 @auditfilterd_conf(i8* %118, i32* %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 @exit(i32 -1) #3
  unreachable

124:                                              ; preds = %116
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = load i32, i32* @debug, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = call i64 @daemon(i32 0, i32 0)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  br label %135

135:                                              ; preds = %134, %124
  %136 = load i32, i32* @SIGHUP, align 4
  %137 = load i32, i32* @signal_handler, align 4
  %138 = call i32 @signal(i32 %136, i32 %137)
  %139 = load i32, i32* @SIGINT, align 4
  %140 = load i32, i32* @signal_handler, align 4
  %141 = call i32 @signal(i32 %139, i32 %140)
  %142 = load i32, i32* @SIGQUIT, align 4
  %143 = load i32, i32* @signal_handler, align 4
  %144 = call i32 @signal(i32 %142, i32 %143)
  %145 = load i32, i32* @SIGTERM, align 4
  %146 = load i32, i32* @signal_handler, align 4
  %147 = call i32 @signal(i32 %145, i32 %146)
  %148 = load i8*, i8** %6, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %135
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @mainloop_pipe(i8* %151, i8* %152, i32 %153)
  br label %160

155:                                              ; preds = %135
  %156 = load i8*, i8** %8, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @mainloop_file(i8* %156, i8* %157, i32* %158)
  br label %160

160:                                              ; preds = %155, %150
  %161 = call i32 (...) @auditfilterd_conf_shutdown()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @auditfilterd_init(...) #1

declare dso_local i64 @auditfilterd_conf(i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @mainloop_pipe(i8*, i8*, i32) #1

declare dso_local i32 @mainloop_file(i8*, i8*, i32*) #1

declare dso_local i32 @auditfilterd_conf_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
