; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@OPARG_TYPE_NONE = common dso_local global i32 0, align 4
@OPARG_TYPE_STRING = common dso_local global i32 0, align 4
@OPARG_TYPE_NUMERIC = common dso_local global i32 0, align 4
@OPARG_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@OPARG_TYPE_ENUMERATION = common dso_local global i32 0, align 4
@OPARG_TYPE_MEMBERSHIP = common dso_local global i32 0, align 4
@OPARG_TYPE_HIERARCHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_value(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %4, align 8
  %9 = load i8, i8* %7, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 61
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %30

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @SPN_OPTION_NAME_CHARS(i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @IS_END_XML_TOKEN_CHAR(i8 signext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22, %13
  br label %30

30:                                               ; preds = %43, %29, %12
  %31 = load i32, i32* @OPARG_TYPE_NONE, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = call i8* @skip_unkn(i8* %36)
  store i8* %37, i8** %3, align 8
  br label %72

38:                                               ; preds = %22
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @find_option_value_type_cmd(i8* %39, i64 %40)
  switch i32 %41, label %42 [
    i32 128, label %43
    i32 129, label %44
    i32 134, label %48
    i32 137, label %52
    i32 136, label %52
    i32 133, label %56
    i32 131, label %60
    i32 130, label %60
    i32 132, label %64
    i32 135, label %64
  ]

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %38, %42
  br label %30

44:                                               ; preds = %38
  %45 = load i32, i32* @OPARG_TYPE_STRING, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %68

48:                                               ; preds = %38
  %49 = load i32, i32* @OPARG_TYPE_NUMERIC, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %68

52:                                               ; preds = %38, %38
  %53 = load i32, i32* @OPARG_TYPE_BOOLEAN, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %68

56:                                               ; preds = %38
  %57 = load i32, i32* @OPARG_TYPE_ENUMERATION, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %68

60:                                               ; preds = %38, %38
  %61 = load i32, i32* @OPARG_TYPE_MEMBERSHIP, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %38, %38
  %65 = load i32, i32* @OPARG_TYPE_HIERARCHY, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %60, %56, %52, %48, %44
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %3, align 8
  br label %72

72:                                               ; preds = %68, %30
  %73 = load i8*, i8** %3, align 8
  ret i8* %73
}

declare dso_local i8* @SPN_OPTION_NAME_CHARS(i8*) #1

declare dso_local i32 @IS_END_XML_TOKEN_CHAR(i8 signext) #1

declare dso_local i8* @skip_unkn(i8*) #1

declare dso_local i32 @find_option_value_type_cmd(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
