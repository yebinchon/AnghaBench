; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetupProtoRedirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetupProtoRedirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i8* }
%struct.protoent = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"redirect_port: strdup() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"redirect_proto: missing protocol\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"redirect_proto: unknown protocol %s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"redirect_proto: missing local address\00", align 1
@INADDR_ANY = common dso_local global i8* null, align 8
@mla = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupProtoRedirect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.protoent*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @strtok(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.protoent* @getprotobyname(i8* %25)
  store %struct.protoent* %26, %struct.protoent** %10, align 8
  %27 = load %struct.protoent*, %struct.protoent** %10, align 8
  %28 = icmp eq %struct.protoent* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.protoent*, %struct.protoent** %10, align 8
  %34 = getelementptr inbounds %struct.protoent, %struct.protoent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @StrToAddr(i8* %43, %struct.in_addr* %5)
  br label %45

45:                                               ; preds = %42, %40
  %46 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @StrToAddr(i8* %50, %struct.in_addr* %6)
  br label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** @INADDR_ANY, align 8
  %54 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @StrToAddr(i8* %60, %struct.in_addr* %7)
  br label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** @INADDR_ANY, align 8
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @mla, align 4
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @LibAliasRedirectProto(i32 %66, i8* %69, i8* %71, i8* %73, i32 %67)
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @free(i8* %75)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @StrToAddr(i8*, %struct.in_addr*) #1

declare dso_local i32 @LibAliasRedirectProto(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
