; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_sl.c_mandoc_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_sl.c_mandoc_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [20 x i8] c".\\\22 Things to fix:\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c".\\\22   * correct section, and operating system\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c".\\\22   * remove Op from mandatory flags\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c".\\\22   * use better macros for arguments (like .Pa for files)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".\\\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%b %d, %Y\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".Dd %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c".Dt %s SECTION\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c".Os OPERATING_SYSTEM\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".Sh NAME\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".Nm %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".Nd\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"in search of a description\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c".Sh SYNOPSIS\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".Nm\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c".Op Fl %s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c".Ar %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c".Sh DESCRIPTION\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Supported options:\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c".Bl -tag -width Ds\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c".It Fl %s\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c", %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".El\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c".\\\22.Sh ENVIRONMENT\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c".\\\22.Sh FILES\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c".\\\22.Sh EXAMPLES\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c".\\\22.Sh DIAGNOSTICS\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c".\\\22.Sh SEE ALSO\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c".\\\22.Sh STANDARDS\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c".\\\22.Sh HISTORY\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c".\\\22.Sh AUTHORS\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c".\\\22.Sh BUGS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @mandoc_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mandoc_template(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @time(i32* null)
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %18 = call i32 @localtime(i32* %10)
  %19 = call i32 @strftime(i8* %17, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %22 = call i8* (...) @getprogname()
  %23 = call i8* @strrchr(i8* %22, i8 signext 47)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %9, align 8
  br label %31

29:                                               ; preds = %2
  %30 = call i8* (...) @getprogname()
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strncpy(i8* %32, i8* %33, i32 64)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 63
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %37 = call i32 @strupr(i8* %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %5, align 8
  br label %49

49:                                               ; preds = %60, %31
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 1
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %5, align 8
  br label %49

63:                                               ; preds = %49
  %64 = load i8*, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %66, %63
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %5, align 8
  br label %79

79:                                               ; preds = %109, %74
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %79
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %6, align 8
  br label %108

103:                                              ; preds = %84
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %103, %97
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 1
  store %struct.TYPE_3__* %111, %struct.TYPE_3__** %5, align 8
  br label %79

112:                                              ; preds = %79
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = icmp ne %struct.TYPE_3__* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %115, %112
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strupr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
