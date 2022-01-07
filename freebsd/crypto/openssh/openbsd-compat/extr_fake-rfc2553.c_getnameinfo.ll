; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fake-rfc2553.c_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fake-rfc2553.c_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.hostent = type { i8* }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EAI_MEMORY = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@EAI_NODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnameinfo(%struct.sockaddr* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in*, align 8
  %17 = alloca %struct.hostent*, align 8
  %18 = alloca [16 x i8], align 16
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %16, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_UNSPEC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %7
  %27 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %33, i32* %8, align 4
  br label %97

34:                                               ; preds = %26, %7
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohs(i32 %41)
  %43 = call i32 @snprintf(i8* %38, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @strlcpy(i8* %44, i8* %45, i64 %46)
  %48 = load i64, i64* %14, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %51, i32* %8, align 4
  br label %97

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @NI_NUMERICHOST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @inet_ntoa(i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @strlcpy(i8* %62, i8* %66, i64 %67)
  %69 = load i64, i64* %12, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %72, i32* %8, align 4
  br label %97

73:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %97

74:                                               ; preds = %56
  %75 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %75, i32 0, i32 0
  %77 = bitcast i32* %76 to i8*
  %78 = load i64, i64* @AF_INET, align 8
  %79 = call %struct.hostent* @gethostbyaddr(i8* %77, i32 4, i64 %78)
  store %struct.hostent* %79, %struct.hostent** %17, align 8
  %80 = load %struct.hostent*, %struct.hostent** %17, align 8
  %81 = icmp eq %struct.hostent* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @EAI_NODATA, align 4
  store i32 %83, i32* %8, align 4
  br label %97

84:                                               ; preds = %74
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.hostent*, %struct.hostent** %17, align 8
  %87 = getelementptr inbounds %struct.hostent, %struct.hostent* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @strlcpy(i8* %85, i8* %88, i64 %89)
  %91 = load i64, i64* %12, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %94, i32* %8, align 4
  br label %97

95:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %97

96:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %95, %93, %82, %73, %71, %50, %32
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
