; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_getnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_getnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netinfo = type { i8*, i32, i8* }
%struct.netent = type { i32 }
%struct.in_addr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@RIP_AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.netinfo*)* @getnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnet(i8* %0, %struct.netinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.netinfo* %1, %struct.netinfo** %5, align 8
  %15 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %12, align 8
  %22 = icmp ne i8* null, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = trunc i64 %17 to i32
  %32 = sub nsw i32 %31, 1
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

35:                                               ; preds = %23
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @memmove(i8* %19, i8* %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %19, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %12, align 8
  store i8* %19, i8** %4, align 8
  br label %44

44:                                               ; preds = %35, %2
  %45 = load i8*, i8** %4, align 8
  %46 = call %struct.netent* @getnetbyname(i8* %45)
  store %struct.netent* %46, %struct.netent** %7, align 8
  %47 = load %struct.netent*, %struct.netent** %7, align 8
  %48 = icmp ne %struct.netent* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.netent*, %struct.netent** %7, align 8
  %51 = getelementptr inbounds %struct.netent, %struct.netent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %65

54:                                               ; preds = %44
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @inet_aton(i8* %55, %struct.in_addr* %9)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohl(i32 %60)
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i8*, i8** %12, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @std_mask(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = xor i32 %72, -1
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 -1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %68
  br label %96

80:                                               ; preds = %65
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @strtoul(i8* %81, i8** %13, i32 0)
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = icmp sgt i32 %89, 32
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %80
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 32, %93
  %95 = shl i32 -1, %94
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %79
  %97 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @htonl(i32 %98)
  %100 = load %struct.netinfo*, %struct.netinfo** %5, align 8
  %101 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @RIP_AF_INET, align 4
  %103 = load %struct.netinfo*, %struct.netinfo** %5, align 8
  %104 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @htonl(i32 %105)
  %107 = load %struct.netinfo*, %struct.netinfo** %5, align 8
  %108 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

109:                                              ; preds = %96, %91, %63, %34
  %110 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local %struct.netent* @getnetbyname(i8*) #2

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @std_mask(i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i8* @htonl(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
