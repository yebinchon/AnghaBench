; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_name.c_nb_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_name.c_nb_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i32 }
%struct.nb_name = type { i32 }
%struct.sockaddr_nb = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_IPX = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@NB_ENCNAMELEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"a bug somewhere in the nb_name* code\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_sockaddr(%struct.sockaddr* %0, %struct.nb_name* %1, %struct.sockaddr_nb** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.nb_name*, align 8
  %7 = alloca %struct.sockaddr_nb**, align 8
  %8 = alloca %struct.sockaddr_nb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.nb_name* %1, %struct.nb_name** %6, align 8
  store %struct.sockaddr_nb** %2, %struct.sockaddr_nb*** %7, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = icmp ne %struct.sockaddr* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_IPX, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %19, %13, %3
  %28 = load %struct.nb_name*, %struct.nb_name** %6, align 8
  %29 = call i32 @nb_name_len(%struct.nb_name* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NB_ENCNAMELEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @nb_snballoc(i32 %36, %struct.sockaddr_nb** %8)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nb_name*, %struct.nb_name** %6, align 8
  %45 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr_nb, %struct.sockaddr_nb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nb_name_encode(%struct.nb_name* %44, i32 %47)
  %49 = icmp ne i32 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %54 = icmp ne %struct.sockaddr* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %57 = getelementptr inbounds %struct.sockaddr_nb, %struct.sockaddr_nb* %56, i32 0, i32 0
  %58 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %59 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32* %57, %struct.sockaddr* %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %52
  %64 = load %struct.sockaddr_nb*, %struct.sockaddr_nb** %8, align 8
  %65 = load %struct.sockaddr_nb**, %struct.sockaddr_nb*** %7, align 8
  store %struct.sockaddr_nb* %64, %struct.sockaddr_nb** %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %40, %33, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @nb_name_len(%struct.nb_name*) #1

declare dso_local i32 @nb_snballoc(i32, %struct.sockaddr_nb**) #1

declare dso_local i32 @nb_name_encode(%struct.nb_name*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
