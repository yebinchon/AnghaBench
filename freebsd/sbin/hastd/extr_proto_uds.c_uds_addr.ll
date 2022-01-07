; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_uds.c_uds_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_uds.c_uds_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"uds://\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unix://\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_un*)* @uds_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_addr(i8* %0, %struct.sockaddr_un* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_un*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %55

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strncasecmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 6
  store i8* %15, i8** %4, align 8
  br label %37

16:                                               ; preds = %9
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strncasecmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 7
  store i8* %22, i8** %4, align 8
  br label %36

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i32* @strstr(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29, %23
  store i32 -1, i32* %3, align 4
  br label %55

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %13
  %38 = load i32, i32* @AF_UNIX, align 4
  %39 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %40 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %42 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlcpy(i32 %43, i8* %44, i32 4)
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %37
  %51 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %52 = call i32 @SUN_LEN(%struct.sockaddr_un* %51)
  %53 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %54 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %48, %34, %8
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @SUN_LEN(%struct.sockaddr_un*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
