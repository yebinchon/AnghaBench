; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ADDR2NAME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"hostlen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"servlen\00", align 1
@EAI_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"sa\00", align 1
@EAI_FAIL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"serv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dns_getnameinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_getnameinfo(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @dns_allowed_type(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @dns_allowed_type(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %26, i32* %4, align 4
  br label %137

27:                                               ; preds = %21, %3
  store i32 0, i32* %16, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %28 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 8)
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @nvlist_get_number(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %30, i64* %13, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @nvlist_get_number(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  %38 = call i8* @calloc(i32 1, i64 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %42, i32* %16, align 4
  br label %127

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i64, i64* %14, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  %50 = call i8* @calloc(i32 1, i64 %49)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %54, i32* %16, align 4
  br label %127

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32*, i32** %6, align 8
  %58 = call i8* @nvlist_get_binary(i32* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %12)
  store i8* %58, i8** %9, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @EAI_FAIL, align 4
  store i32 %62, i32* %16, align 4
  br label %127

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @memcpy(%struct.sockaddr_storage* %8, i8* %64, i64 %65)
  %67 = load i64, i64* %12, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AF_INET, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 4
  br i1 %76, label %77, label %88

77:                                               ; preds = %73, %63
  %78 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_INET6, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %77
  %87 = load i32, i32* @EAI_FAIL, align 4
  store i32 %87, i32* %16, align 4
  br label %127

88:                                               ; preds = %82, %73
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @dns_allowed_family(i32* %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %96, i32* %16, align 4
  br label %127

97:                                               ; preds = %88
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @nvlist_get_number(i32* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %102 = load i32, i32* %15, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @getnameinfo(%struct.sockaddr* %101, i32 %102, i8* %103, i64 %104, i8* %105, i64 %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %127

112:                                              ; preds = %97
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32*, i32** %7, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @nvlist_move_string(i32* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %7, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @nvlist_move_string(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %111, %95, %86, %61, %53, %41
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %25
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @dns_allowed_type(i32*, i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i8*, i64) #1

declare dso_local i32 @dns_allowed_family(i32*, i32) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @nvlist_move_string(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
