; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_authextstrtoaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_authextstrtoaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@MAX_ADDR_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0#\00", align 1
@UNBOUND_DNS_OVER_TLS_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authextstrtoaddr(i8* %0, %struct.sockaddr_storage* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 64)
  store i8* %22, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %88

24:                                               ; preds = %4
  %25 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i8* @strchr(i8* %35, i8 signext 35)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load i8*, i8** %15, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8**, i8*** %9, align 8
  store i8* %41, i8** %42, align 8
  br label %45

43:                                               ; preds = %24
  %44 = load i8**, i8*** %9, align 8
  store i8* null, i8** %44, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = trunc i64 %26 to i32
  %54 = call i32 @strlcpy(i8* %28, i8* %52, i32 %53)
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i8, i8* %28, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %51
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

71:                                               ; preds = %65, %62
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @ipstrtoaddr(i8* %28, i32 %82, %struct.sockaddr_storage* %83, i32* %84)
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

86:                                               ; preds = %81, %79, %70, %50
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %130

88:                                               ; preds = %4
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 35)
  store i8* %90, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %123

92:                                               ; preds = %88
  %93 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %17, align 8
  %96 = alloca i8, i64 %94, align 16
  store i64 %94, i64* %18, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i32, i32* @MAX_ADDR_STRLEN, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp uge i64 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

107:                                              ; preds = %92
  %108 = load i8*, i8** %6, align 8
  %109 = trunc i64 %94 to i32
  %110 = call i32 @strlcpy(i8* %96, i8* %108, i32 %109)
  %111 = load i64, i64* %19, align 8
  %112 = getelementptr inbounds i8, i8* %96, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* @UNBOUND_DNS_OVER_TLS_PORT, align 4
  store i32 %113, i32* %11, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8**, i8*** %9, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @ipstrtoaddr(i8* %96, i32 %117, %struct.sockaddr_storage* %118, i32* %119)
  store i32 %120, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %121

121:                                              ; preds = %107, %106
  %122 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %122)
  br label %130

123:                                              ; preds = %88
  %124 = load i8**, i8*** %9, align 8
  store i8* null, i8** %124, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @ipstrtoaddr(i8* %125, i32 %126, %struct.sockaddr_storage* %127, i32* %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %123, %121, %86
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ipstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
