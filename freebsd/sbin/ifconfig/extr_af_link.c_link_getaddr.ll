; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_link.c_link_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_link.c_link_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sockaddr }
%struct.sockaddr = type { i32, i32, i8* }
%struct.sockaddr_dl = type { i32, i32, i32*, i8*, i64 }

@link_ridreq = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't set link-level netmask or broadcast\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"malformed link-level address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @link_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_getaddr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sockaddr* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link_ridreq, i32 0, i32 0), %struct.sockaddr** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ADDR, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 0
  store i32 32, i32* %18, align 8
  %19 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %20 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** @AF_LINK, align 8
  %23 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 2
  %25 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %26 = call i32 @arc4random_buf(i32** %24, i32 %25)
  %27 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 252
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %34, align 4
  br label %57

37:                                               ; preds = %13
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %39, 2
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %5, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 58, i8* %47, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  %52 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 0
  store i32 32, i32* %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @link_addr(i8* %53, %struct.sockaddr_dl* %6)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %45, %17
  %58 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %60, 4
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i8*, i8** @AF_LINK, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = call i32 @LLADDR(%struct.sockaddr_dl* %6)
  %73 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %74 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bcopy(i32 %72, i32 %75, i32 %77)
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @arc4random_buf(i32**, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @link_addr(i8*, %struct.sockaddr_dl*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
