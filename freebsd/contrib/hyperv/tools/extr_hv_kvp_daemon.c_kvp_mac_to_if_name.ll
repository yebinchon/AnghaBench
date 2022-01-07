; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_mac_to_if_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_mac_to_if_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, i64, %struct.ifaddrs* }
%struct.sockaddr_dl = type { i64 }
%struct.ether_addr = type { i32 }

@IFT_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @kvp_mac_to_if_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kvp_mac_to_if_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %10 = call i32 @getifaddrs(%struct.ifaddrs** %4)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %1
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %14, %struct.ifaddrs** %5, align 8
  br label %15

15:                                               ; preds = %68, %13
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %17 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %19, %struct.sockaddr_dl** %6, align 8
  %20 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IFT_ETHER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %15
  %26 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %27 = call i64 @LLADDR(%struct.sockaddr_dl* %26)
  %28 = inttoptr i64 %27 to %struct.ether_addr*
  %29 = call i32 @ether_ntoa(%struct.ether_addr* %28)
  %30 = call i8* @strdup(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %45, %33
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call signext i8 @toupper(i8 signext %42)
  %44 = load i8*, i8** %9, align 8
  store i8 %43, i8* %44, align 1
  br label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i64 @strncmp(i8* %49, i8* %50, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %57 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @strdup(i32 %58)
  store i8* %59, i8** %3, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @free(i8* %60)
  br label %73

62:                                               ; preds = %48
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %25
  br label %67

67:                                               ; preds = %66, %15
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %70 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %69, i32 0, i32 2
  %71 = load %struct.ifaddrs*, %struct.ifaddrs** %70, align 8
  store %struct.ifaddrs* %71, %struct.ifaddrs** %4, align 8
  %72 = icmp ne %struct.ifaddrs* %71, null
  br i1 %72, label %15, label %73

73:                                               ; preds = %68, %55
  %74 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %75 = call i32 @freeifaddrs(%struct.ifaddrs* %74)
  br label %76

76:                                               ; preds = %73, %1
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
