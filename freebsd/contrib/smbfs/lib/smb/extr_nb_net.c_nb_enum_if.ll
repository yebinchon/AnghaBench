; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_net.c_nb_enum_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_net.c_nb_enum_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_ifdesc = type { i32, %struct.nb_ifdesc*, i32, i32, i32 }
%struct.ifaddrs = type { i32, i64, %struct.TYPE_2__*, i32, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in = type { i32 }

@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_enum_if(%struct.nb_ifdesc** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nb_ifdesc**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nb_ifdesc*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca i32, align 4
  store %struct.nb_ifdesc** %0, %struct.nb_ifdesc*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i64 @getifaddrs(%struct.ifaddrs** %7)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %3, align 4
  br label %108

14:                                               ; preds = %2
  %15 = load %struct.nb_ifdesc**, %struct.nb_ifdesc*** %4, align 8
  store %struct.nb_ifdesc* null, %struct.nb_ifdesc** %15, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  store %struct.ifaddrs* %16, %struct.ifaddrs** %8, align 8
  br label %17

17:                                               ; preds = %101, %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %19 = icmp ne %struct.ifaddrs* %18, null
  br i1 %19, label %20, label %105

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %105

25:                                               ; preds = %20
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %25
  %34 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %35 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_UP, align 4
  %38 = load i32, i32* @IFF_BROADCAST, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* @IFF_UP, align 4
  %42 = load i32, i32* @IFF_BROADCAST, align 4
  %43 = or i32 %41, %42
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %25
  br label %101

46:                                               ; preds = %33
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %48 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strlen(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = icmp uge i64 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %101

54:                                               ; preds = %46
  %55 = call %struct.nb_ifdesc* @malloc(i32 32)
  store %struct.nb_ifdesc* %55, %struct.nb_ifdesc** %6, align 8
  %56 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %57 = icmp eq %struct.nb_ifdesc* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %60 = call i32 @freeifaddrs(%struct.ifaddrs* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %3, align 4
  br label %108

62:                                               ; preds = %54
  %63 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %64 = call i32 @bzero(%struct.nb_ifdesc* %63, i32 32)
  %65 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %66 = getelementptr inbounds %struct.nb_ifdesc, %struct.nb_ifdesc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %69 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @strcpy(i32 %67, i32 %70)
  %72 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %73 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %76 = getelementptr inbounds %struct.nb_ifdesc, %struct.nb_ifdesc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %78 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = bitcast %struct.TYPE_2__* %79 to %struct.sockaddr_in*
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %84 = getelementptr inbounds %struct.nb_ifdesc, %struct.nb_ifdesc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %86 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.sockaddr_in*
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %92 = getelementptr inbounds %struct.nb_ifdesc, %struct.nb_ifdesc* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.nb_ifdesc**, %struct.nb_ifdesc*** %4, align 8
  %94 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %93, align 8
  %95 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %96 = getelementptr inbounds %struct.nb_ifdesc, %struct.nb_ifdesc* %95, i32 0, i32 1
  store %struct.nb_ifdesc* %94, %struct.nb_ifdesc** %96, align 8
  %97 = load %struct.nb_ifdesc*, %struct.nb_ifdesc** %6, align 8
  %98 = load %struct.nb_ifdesc**, %struct.nb_ifdesc*** %4, align 8
  store %struct.nb_ifdesc* %97, %struct.nb_ifdesc** %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %62, %53, %45
  %102 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %103 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %102, i32 0, i32 4
  %104 = load %struct.ifaddrs*, %struct.ifaddrs** %103, align 8
  store %struct.ifaddrs* %104, %struct.ifaddrs** %8, align 8
  br label %17

105:                                              ; preds = %24, %17
  %106 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %107 = call i32 @freeifaddrs(%struct.ifaddrs* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %58, %12
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.nb_ifdesc* @malloc(i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @bzero(%struct.nb_ifdesc*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
