; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_ctx_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_ctx_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_ctx = type { i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i64 }

@NBCF_RESOLVED = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"can't resolve %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unsupported address family %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_ctx_resolve(%struct.nb_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nb_ctx*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  store %struct.nb_ctx* %0, %struct.nb_ctx** %3, align 8
  %6 = load i32, i32* @NBCF_RESOLVED, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @INADDR_BROADCAST, align 4
  %19 = call i32 @htonl(i32 %18)
  %20 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nb_resolvehost_in(i32* %28, %struct.sockaddr** %4, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @smb_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %81

42:                                               ; preds = %24
  %43 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @smb_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 0, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %2, align 4
  br label %81

54:                                               ; preds = %42
  %55 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %56 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %56, i32 0, i32 2
  %58 = call i32 @bcopy(%struct.sockaddr* %55, %struct.TYPE_4__* %57, i32 24)
  %59 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %60 = call i32 @free(%struct.sockaddr* %59)
  br label %61

61:                                               ; preds = %54, %17
  %62 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @htons(i32 %64)
  %66 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i64, i64* @AF_INET, align 8
  %70 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 24, i32* %75, align 8
  %76 = load i32, i32* @NBCF_RESOLVED, align 4
  %77 = load %struct.nb_ctx*, %struct.nb_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %61, %48, %35
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nb_resolvehost_in(i32*, %struct.sockaddr**, i32) #1

declare dso_local i32 @smb_error(i8*, i32, i64) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @free(%struct.sockaddr*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
