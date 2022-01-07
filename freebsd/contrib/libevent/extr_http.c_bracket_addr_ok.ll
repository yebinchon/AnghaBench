; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_bracket_addr_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_bracket_addr_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@SUBDELIMS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @bracket_addr_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bracket_addr_ok(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 3
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ugt i8* %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 91
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 93
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %13, %2
  store i32 0, i32* %3, align 4
  br label %124

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 118
  br i1 %30, label %31, label %98

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @EVUTIL_ISXDIGIT_(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %124

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 46
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @EVUTIL_ISXDIGIT_(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %124

62:                                               ; preds = %58
  br label %42

63:                                               ; preds = %51
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 46
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %124

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %96, %69
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @CHAR_IS_UNRESERVED(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @SUBDELIMS, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @strchr(i32 %82, i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %95

92:                                               ; preds = %87, %81, %76
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %4, align 8
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %124

96:                                               ; preds = %92
  br label %72

97:                                               ; preds = %72
  store i32 2, i32* %3, align 4
  br label %124

98:                                               ; preds = %25
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sub nsw i64 %103, 2
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %106, 64
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %124

109:                                              ; preds = %98
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @memcpy(i8* %110, i8* %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load i32, i32* @AF_INET6, align 4
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %120 = call i32 @evutil_inet_pton(i32 %118, i8* %119, %struct.in6_addr* %8)
  %121 = icmp eq i32 %120, 1
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %109, %108, %97, %95, %68, %61, %40, %24
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @EVUTIL_ISXDIGIT_(i8 signext) #1

declare dso_local i64 @CHAR_IS_UNRESERVED(i8 signext) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @evutil_inet_pton(i32, i8*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
