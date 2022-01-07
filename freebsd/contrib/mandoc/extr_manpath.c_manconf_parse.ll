; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_manpath.c_manconf_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_manpath.c_manconf_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manconf = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"MANPATH\00", align 1
@MAN_CONF_FILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manconf_parse(%struct.manconf* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.manconf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.manconf* %0, %struct.manconf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.manconf*, %struct.manconf** %5, align 8
  %11 = getelementptr inbounds %struct.manconf, %struct.manconf* %10, i32 0, i32 0
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @manpath_parseline(i32* %11, i8* %12, i8 signext 109)
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* null, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.manconf*, %struct.manconf** %5, align 8
  %18 = getelementptr inbounds %struct.manconf, %struct.manconf* %17, i32 0, i32 0
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @manpath_parseline(i32* %18, i8* %19, i8 signext 77)
  br label %97

21:                                               ; preds = %4
  %22 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* null, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @MAN_CONF_FILE, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* null, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %27
  %37 = load %struct.manconf*, %struct.manconf** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @manconf_file(%struct.manconf* %37, i8* %38)
  br label %97

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 58, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.manconf*, %struct.manconf** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @manconf_file(%struct.manconf* %47, i8* %48)
  %50 = load %struct.manconf*, %struct.manconf** %5, align 8
  %51 = getelementptr inbounds %struct.manconf, %struct.manconf* %50, i32 0, i32 0
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @manpath_parseline(i32* %51, i8* %52, i8 signext 0)
  br label %97

54:                                               ; preds = %40
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.manconf*, %struct.manconf** %5, align 8
  %66 = getelementptr inbounds %struct.manconf, %struct.manconf* %65, i32 0, i32 0
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @manpath_parseline(i32* %66, i8* %67, i8 signext 0)
  %69 = load %struct.manconf*, %struct.manconf** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @manconf_file(%struct.manconf* %69, i8* %70)
  br label %97

72:                                               ; preds = %54
  %73 = load i8*, i8** %7, align 8
  %74 = call i8* @strstr(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* null, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 0, i8* %78, align 1
  %80 = load %struct.manconf*, %struct.manconf** %5, align 8
  %81 = getelementptr inbounds %struct.manconf, %struct.manconf* %80, i32 0, i32 0
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @manpath_parseline(i32* %81, i8* %82, i8 signext 0)
  %84 = load %struct.manconf*, %struct.manconf** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @manconf_file(%struct.manconf* %84, i8* %85)
  %87 = load %struct.manconf*, %struct.manconf** %5, align 8
  %88 = getelementptr inbounds %struct.manconf, %struct.manconf* %87, i32 0, i32 0
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 @manpath_parseline(i32* %88, i8* %90, i8 signext 0)
  br label %97

92:                                               ; preds = %72
  %93 = load %struct.manconf*, %struct.manconf** %5, align 8
  %94 = getelementptr inbounds %struct.manconf, %struct.manconf* %93, i32 0, i32 0
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @manpath_parseline(i32* %94, i8* %95, i8 signext 0)
  br label %97

97:                                               ; preds = %92, %77, %64, %46, %36, %16
  ret void
}

declare dso_local i32 @manpath_parseline(i32*, i8*, i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @manconf_file(%struct.manconf*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
