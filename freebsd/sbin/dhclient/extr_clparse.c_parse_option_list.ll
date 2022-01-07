; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_option_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_option_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"expected option name.\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: unexpected option name.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: too many options.\00", align 1
@COMMA = common dso_local global i32 0, align 4
@SEMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"expecting semicolon.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_option_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %64, %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @next_token(i8** %9, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @is_identifier(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @skip_to_semi(i32* %18)
  store i32 0, i32* %3, align 4
  br label %78

20:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcasecmp(i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %21

39:                                               ; preds = %34, %21
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 256
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @skip_to_semi(i32* %45)
  store i32 0, i32* %3, align 4
  br label %78

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 256
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @skip_to_semi(i32* %59)
  store i32 0, i32* %3, align 4
  br label %78

61:                                               ; preds = %47
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @next_token(i8** %9, i32* %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @COMMA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %10, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @SEMI, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @skip_to_semi(i32* %74)
  store i32 0, i32* %3, align 4
  br label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %72, %56, %42, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @is_identifier(i32) #1

declare dso_local i32 @parse_warn(i8*, ...) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
