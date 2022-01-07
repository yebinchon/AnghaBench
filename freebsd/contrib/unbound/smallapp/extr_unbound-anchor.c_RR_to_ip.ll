; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_RR_to_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_RR_to_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i8*, i32 }
%struct.sockaddr_in = type { i32, i8*, i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"skipped badly formatted A\0A\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"skipped badly formatted AAAA\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"internal error: bad type in RRtoip\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"resolved server address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_list* (i32, i8*, i32, i32)* @RR_to_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_list* @RR_to_ip(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ip_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i64 @calloc(i32 1, i32 16)
  %15 = inttoptr i64 %14 to %struct.ip_list*
  store %struct.ip_list* %15, %struct.ip_list** %10, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %22 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %21, i32 0, i32 1
  %23 = bitcast i32* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %12, align 8
  %24 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %25 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %24, i32 0, i32 0
  store i8* inttoptr (i64 24 to i8*), i8** %25, align 8
  %26 = load i32, i32* @AF_INET, align 4
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load i64, i64* @verb, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %43 = call i32 @free(%struct.ip_list* %42)
  store %struct.ip_list* null, %struct.ip_list** %5, align 8
  br label %95

44:                                               ; preds = %20
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @memmove(i32* %46, i8* %47, i32 4)
  br label %91

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %55 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %54, i32 0, i32 1
  %56 = bitcast i32* %55 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %56, %struct.sockaddr_in6** %13, align 8
  %57 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %58 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %57, i32 0, i32 0
  store i8* inttoptr (i64 24 to i8*), i8** %58, align 8
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @htons(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 4
  br i1 %68, label %69, label %77

69:                                               ; preds = %53
  %70 = load i64, i64* @verb, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %76 = call i32 @free(%struct.ip_list* %75)
  store %struct.ip_list* null, %struct.ip_list** %5, align 8
  br label %95

77:                                               ; preds = %53
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 0
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @memmove(i32* %79, i8* %80, i32 4)
  br label %90

82:                                               ; preds = %49
  %83 = load i64, i64* @verb, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %89 = call i32 @free(%struct.ip_list* %88)
  store %struct.ip_list* null, %struct.ip_list** %5, align 8
  br label %95

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %44
  %92 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  %93 = call i32 @verb_addr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.ip_list* %92)
  %94 = load %struct.ip_list*, %struct.ip_list** %10, align 8
  store %struct.ip_list* %94, %struct.ip_list** %5, align 8
  br label %95

95:                                               ; preds = %91, %87, %74, %41
  %96 = load %struct.ip_list*, %struct.ip_list** %5, align 8
  ret %struct.ip_list* %96
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.ip_list*) #1

declare dso_local i32 @memmove(i32*, i8*, i32) #1

declare dso_local i32 @verb_addr(i8*, %struct.ip_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
