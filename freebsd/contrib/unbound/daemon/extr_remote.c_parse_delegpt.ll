; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_parse_delegpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_parse_delegpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"error cannot parse IP address or name '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error cannot parse IP address '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"no name verification functionality in ssl library, ignored name for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.delegpt* (i32*, i8*, i32*, i32)* @parse_delegpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.delegpt* @parse_delegpt(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.delegpt*, align 8
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.delegpt* @delegpt_create_mlc(i32* %20)
  store %struct.delegpt* %21, %struct.delegpt** %12, align 8
  %22 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %23 = icmp ne %struct.delegpt* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.delegpt* null, %struct.delegpt** %5, align 8
  br label %105

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %100, %27
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %101

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 32)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  store i8 0, i8* %38, align 1
  %40 = load i8*, i8** %10, align 8
  %41 = call i8* @skipwhite(i8* %40)
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @authextstrtoaddr(i8* %43, %struct.sockaddr_storage* %13, i32* %14, i8** %15)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %82, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  store i32* null, i32** %16, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @parse_arg_name(i32* %50, i8* %51, i32** %16, i64* %17, i32* %18)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %59 = call i32 @delegpt_free_mlc(%struct.delegpt* %58)
  store %struct.delegpt* null, %struct.delegpt** %5, align 8
  br label %105

60:                                               ; preds = %49
  %61 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @delegpt_add_ns_mlc(%struct.delegpt* %61, i32* %62, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %71 = call i32 @delegpt_free_mlc(%struct.delegpt* %70)
  store %struct.delegpt* null, %struct.delegpt** %5, align 8
  br label %105

72:                                               ; preds = %60
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @free(i32* %73)
  br label %81

75:                                               ; preds = %46
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %80 = call i32 @delegpt_free_mlc(%struct.delegpt* %79)
  store %struct.delegpt* null, %struct.delegpt** %5, align 8
  br label %105

81:                                               ; preds = %72
  br label %100

82:                                               ; preds = %42
  %83 = load i8*, i8** %15, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @log_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @delegpt_add_addr_mlc(%struct.delegpt* %89, %struct.sockaddr_storage* %13, i32 %90, i32 0, i32 0, i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %98 = call i32 @delegpt_free_mlc(%struct.delegpt* %97)
  store %struct.delegpt* null, %struct.delegpt** %5, align 8
  br label %105

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %81
  br label %28

101:                                              ; preds = %28
  %102 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %103 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  %104 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  store %struct.delegpt* %104, %struct.delegpt** %5, align 8
  br label %105

105:                                              ; preds = %101, %94, %75, %65, %54, %24
  %106 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  ret %struct.delegpt* %106
}

declare dso_local %struct.delegpt* @delegpt_create_mlc(i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @skipwhite(i8*) #1

declare dso_local i32 @authextstrtoaddr(i8*, %struct.sockaddr_storage*, i32*, i8**) #1

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

declare dso_local i32 @delegpt_add_ns_mlc(%struct.delegpt*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @delegpt_add_addr_mlc(%struct.delegpt*, %struct.sockaddr_storage*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
