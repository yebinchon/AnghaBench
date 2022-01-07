; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_portname.c_portname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_portname.c_portname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8* }
%struct.servent = type { i32 }

@portname.buf = internal global [32 x i8] zeroinitializer, align 16
@opts = common dso_local global i32 0, align 4
@OPT_NORESOLVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @portname(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.protoent*, align 8
  %7 = alloca %struct.servent*, align 8
  %8 = alloca %struct.servent*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.protoent* null, %struct.protoent** %6, align 8
  store %struct.servent* null, %struct.servent** %7, align 8
  store %struct.servent* null, %struct.servent** %8, align 8
  %9 = load i32, i32* @opts, align 4
  %10 = load i32, i32* @OPT_NORESOLVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @htons(i32 %17)
  %19 = call %struct.servent* @getservbyport(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.servent* %19, %struct.servent** %7, align 8
  %20 = icmp ne %struct.servent* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.servent*, %struct.servent** %7, align 8
  %23 = getelementptr inbounds %struct.servent, %struct.servent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i32 %24, i32 31)
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 31), align 1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = call %struct.servent* @getservbyport(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %28, %struct.servent** %8, align 8
  %29 = load %struct.servent*, %struct.servent** %7, align 8
  %30 = getelementptr inbounds %struct.servent, %struct.servent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0))
  %33 = call i64 @strncasecmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %38

36:                                               ; preds = %21
  %37 = load %struct.servent*, %struct.servent** %8, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi %struct.servent* [ null, %35 ], [ %37, %36 ]
  store %struct.servent* %39, %struct.servent** %7, align 8
  br label %40

40:                                               ; preds = %38, %16
  %41 = load %struct.servent*, %struct.servent** %7, align 8
  %42 = icmp ne %struct.servent* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i8** %3, align 8
  br label %71

44:                                               ; preds = %40
  br label %67

45:                                               ; preds = %13
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, -2
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = call %struct.protoent* @getprotobynumber(i32 %49)
  store %struct.protoent* %50, %struct.protoent** %6, align 8
  %51 = icmp ne %struct.protoent* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @htons(i32 %53)
  %55 = load %struct.protoent*, %struct.protoent** %6, align 8
  %56 = getelementptr inbounds %struct.protoent, %struct.protoent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call %struct.servent* @getservbyport(i32 %54, i8* %57)
  store %struct.servent* %58, %struct.servent** %7, align 8
  %59 = icmp ne %struct.servent* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.servent*, %struct.servent** %7, align 8
  %62 = getelementptr inbounds %struct.servent, %struct.servent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strncpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i32 %63, i32 31)
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 31), align 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i8** %3, align 8
  br label %71

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %48, %45
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @portname.buf, i64 0, i64 0), i8** %3, align 8
  br label %71

71:                                               ; preds = %68, %60, %43
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
