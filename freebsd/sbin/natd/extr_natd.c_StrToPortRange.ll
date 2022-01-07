; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_StrToPortRange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_StrToPortRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s/%s: unknown service\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%hu-%hu\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid port range %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToPortRange(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.servent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.servent* @getservbyname(i8* %13, i8* %14)
  store %struct.servent* %15, %struct.servent** %9, align 8
  %16 = load %struct.servent*, %struct.servent** %9, align 8
  %17 = icmp ne %struct.servent* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.servent*, %struct.servent** %9, align 8
  %22 = getelementptr inbounds %struct.servent, %struct.servent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohs(i32 %23)
  %25 = call i32 @SETLOPORT(i32 %20, i64 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SETNUMPORTS(i32 %27, i64 1)
  store i32 0, i32* %4, align 4
  br label %81

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 45)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strtol(i8* %37, i8** %10, i32 10)
  %39 = call i32 @SETLOPORT(i32 %36, i64 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SETNUMPORTS(i32 %45, i64 1)
  store i32 0, i32* %4, align 4
  br label %81

47:                                               ; preds = %34
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %29
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64* %11, i64* %12)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @SETLOPORT(i32 %55, i64 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SETNUMPORTS(i32 %59, i64 0)
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub nsw i64 %67, %68
  %70 = add nsw i64 %69, 1
  %71 = call i32 @SETNUMPORTS(i32 %66, i64 %70)
  br label %72

72:                                               ; preds = %64, %51
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @GETNUMPORTS(i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %72
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %43, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @SETLOPORT(i32, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @SETNUMPORTS(i32, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i64 @GETNUMPORTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
