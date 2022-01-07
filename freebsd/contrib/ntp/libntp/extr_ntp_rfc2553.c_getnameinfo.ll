; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.hostent = type { i32 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4
@h_errno = common dso_local global i64 0, align 8
@TRY_AGAIN = common dso_local global i64 0, align 8
@EAI_AGAIN = common dso_local global i32 0, align 4
@EAI_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnameinfo(%struct.sockaddr* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hostent*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %23, i32* %8, align 4
  br label %55

24:                                               ; preds = %7
  %25 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i8*
  %29 = load i64, i64* @AF_INET, align 8
  %30 = call %struct.hostent* @gethostbyaddr(i8* %28, i32 4, i64 %29)
  store %struct.hostent* %30, %struct.hostent** %16, align 8
  %31 = load %struct.hostent*, %struct.hostent** %16, align 8
  %32 = icmp eq %struct.hostent* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i64, i64* @h_errno, align 8
  %35 = load i64, i64* @TRY_AGAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EAI_AGAIN, align 4
  store i32 %38, i32* %8, align 4
  br label %55

39:                                               ; preds = %33
  %40 = load i32, i32* @EAI_FAIL, align 4
  store i32 %40, i32* %8, align 4
  br label %55

41:                                               ; preds = %24
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.hostent*, %struct.hostent** %16, align 8
  %50 = getelementptr inbounds %struct.hostent, %struct.hostent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @strlcpy(i8* %48, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %44, %41
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %39, %37, %22
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i64) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
