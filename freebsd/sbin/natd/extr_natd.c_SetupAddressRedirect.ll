; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetupAddressRedirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetupAddressRedirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.alias_link = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"redirect_port: strdup() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"redirect_address: missing local address\00", align 1
@INADDR_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"redirect_address: missing public address\00", align 1
@mla = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupAddressRedirect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alias_link*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strtok(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 44)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @INADDR_NONE, align 4
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %8, align 8
  br label %35

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @StrToAddr(i8* %33, %struct.in_addr* %6)
  store i8* null, i8** %8, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @StrToAddr(i8* %42, %struct.in_addr* %7)
  %44 = load i32, i32* @mla, align 4
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.alias_link* @LibAliasRedirectAddr(i32 %44, i32 %46, i32 %48)
  store %struct.alias_link* %49, %struct.alias_link** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %41
  %53 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %54 = icmp ne %struct.alias_link* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = call i8* @strtok(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %61, %55
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @StrToAddr(i8* %62, %struct.in_addr* %6)
  %64 = load i32, i32* @mla, align 4
  %65 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %66 = call i32 @htons(i32 -1)
  %67 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LibAliasAddServer(i32 %64, %struct.alias_link* %65, i32 %68, i32 %66)
  %70 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  br label %58

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %52, %41
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @free(i8* %73)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @StrToAddr(i8*, %struct.in_addr*) #1

declare dso_local %struct.alias_link* @LibAliasRedirectAddr(i32, i32, i32) #1

declare dso_local i32 @LibAliasAddServer(i32, %struct.alias_link*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
