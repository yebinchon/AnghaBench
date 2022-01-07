; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_rewrite_client_leases.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_rewrite_client_leases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.client_lease*, %struct.client_lease* }
%struct.client_lease = type { %struct.client_lease* }

@leaseFile = common dso_local global i64 0, align 8
@path_dhclient_db = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"can't create %s: %m\00", align 1
@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_FSYNC = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"can't limit lease descriptor: %m\00", align 1
@CAP_FCNTL_GETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"can't limit lease descriptor fcntls: %m\00", align 1
@ifi = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewrite_client_leases() #0 {
  %1 = alloca %struct.client_lease*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @leaseFile, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @path_dhclient_db, align 4
  %7 = call i64 @fopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %7, i64* @leaseFile, align 8
  %8 = load i64, i64* @leaseFile, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i32, i32* @path_dhclient_db, align 4
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %5
  %14 = load i32, i32* @CAP_FCNTL, align 4
  %15 = load i32, i32* @CAP_FSTAT, align 4
  %16 = load i32, i32* @CAP_FSYNC, align 4
  %17 = load i32, i32* @CAP_FTRUNCATE, align 4
  %18 = load i32, i32* @CAP_SEEK, align 4
  %19 = load i32, i32* @CAP_WRITE, align 4
  %20 = call i32 @cap_rights_init(i32* %2, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @leaseFile, align 8
  %22 = call i32 @fileno(i64 %21)
  %23 = call i64 @caph_rights_limit(i32 %22, i32* %2)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i64, i64* @leaseFile, align 8
  %29 = call i32 @fileno(i64 %28)
  %30 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %31 = call i64 @caph_fcntls_limit(i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  br label %41

36:                                               ; preds = %0
  %37 = load i64, i64* @leaseFile, align 8
  %38 = call i32 @fflush(i64 %37)
  %39 = load i64, i64* @leaseFile, align 8
  %40 = call i32 @rewind(i64 %39)
  br label %41

41:                                               ; preds = %36, %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ifi, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.client_lease*, %struct.client_lease** %45, align 8
  store %struct.client_lease* %46, %struct.client_lease** %1, align 8
  br label %47

47:                                               ; preds = %54, %41
  %48 = load %struct.client_lease*, %struct.client_lease** %1, align 8
  %49 = icmp ne %struct.client_lease* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ifi, align 8
  %52 = load %struct.client_lease*, %struct.client_lease** %1, align 8
  %53 = call i32 @write_client_lease(%struct.TYPE_5__* %51, %struct.client_lease* %52, i32 1)
  br label %54

54:                                               ; preds = %50
  %55 = load %struct.client_lease*, %struct.client_lease** %1, align 8
  %56 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %55, i32 0, i32 0
  %57 = load %struct.client_lease*, %struct.client_lease** %56, align 8
  store %struct.client_lease* %57, %struct.client_lease** %1, align 8
  br label %47

58:                                               ; preds = %47
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ifi, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.client_lease*, %struct.client_lease** %62, align 8
  %64 = icmp ne %struct.client_lease* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ifi, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ifi, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.client_lease*, %struct.client_lease** %70, align 8
  %72 = call i32 @write_client_lease(%struct.TYPE_5__* %66, %struct.client_lease* %71, i32 1)
  br label %73

73:                                               ; preds = %65, %58
  %74 = load i64, i64* @leaseFile, align 8
  %75 = call i32 @fflush(i64 %74)
  %76 = load i64, i64* @leaseFile, align 8
  %77 = call i32 @fileno(i64 %76)
  %78 = load i64, i64* @leaseFile, align 8
  %79 = call i32 @ftello(i64 %78)
  %80 = call i32 @ftruncate(i32 %77, i32 %79)
  %81 = load i64, i64* @leaseFile, align 8
  %82 = call i32 @fileno(i64 %81)
  %83 = call i32 @fsync(i32 %82)
  ret void
}

declare dso_local i64 @fopen(i32, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @fileno(i64) #1

declare dso_local i64 @caph_fcntls_limit(i32, i32) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @rewind(i64) #1

declare dso_local i32 @write_client_lease(%struct.TYPE_5__*, %struct.client_lease*, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @ftello(i64) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
