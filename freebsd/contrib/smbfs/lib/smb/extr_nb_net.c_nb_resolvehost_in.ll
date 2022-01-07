; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_net.c_nb_resolvehost_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_net.c_nb_resolvehost_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.hostent = type { i64, i32, i32 }
%struct.sockaddr_in = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"can't get server address `%s': \00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"address for `%s' is not in the AF_INET family\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"address for `%s' has invalid length\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_resolvehost_in(i8* %0, %struct.sockaddr** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.hostent* @gethostbyname(i8* %11)
  store %struct.hostent* %12, %struct.hostent** %8, align 8
  %13 = load %struct.hostent*, %struct.hostent** %8, align 8
  %14 = icmp ne %struct.hostent* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @herror(i32* null)
  %19 = load i32, i32* @ENETDOWN, align 4
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.hostent*, %struct.hostent** %8, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %20
  %31 = load %struct.hostent*, %struct.hostent** %8, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %38, i32* %4, align 4
  br label %72

39:                                               ; preds = %30
  store i32 24, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.sockaddr_in* @malloc(i32 %40)
  store %struct.sockaddr_in* %41, %struct.sockaddr_in** %9, align 8
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %43 = icmp eq %struct.sockaddr_in* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %4, align 4
  br label %72

46:                                               ; preds = %39
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bzero(%struct.sockaddr_in* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hostent*, %struct.hostent** %8, align 8
  %54 = getelementptr inbounds %struct.hostent, %struct.hostent* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.hostent*, %struct.hostent** %8, align 8
  %62 = getelementptr inbounds %struct.hostent, %struct.hostent* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32* %60, i32 %63, i32 4)
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @htons(i64 %65)
  %67 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %70 = bitcast %struct.sockaddr_in* %69 to %struct.sockaddr*
  %71 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  store %struct.sockaddr* %70, %struct.sockaddr** %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %46, %44, %35, %26, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @herror(i32*) #1

declare dso_local %struct.sockaddr_in* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
