; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }
%struct.hostent = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@const_v4 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@const_v6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.addrinfo*, i32, i32, i32, %struct.addrinfo**)* @get_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nodes(i8* %0, %struct.addrinfo* %1, i32 %2, i32 %3, i32 %4, %struct.addrinfo** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo**, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.addrinfo** %5, %struct.addrinfo*** %12, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  store %struct.addrinfo** %13, %struct.addrinfo*** %14, align 8
  %20 = load i32, i32* @PF_UNSPEC, align 4
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @EAI_NONAME, align 4
  store i32 %21, i32* %17, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %23 = icmp ne %struct.addrinfo* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %24, %6
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @PF_INET, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @PF_UNSPEC, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @PF_INET, align 4
  %42 = call %struct.hostent* @getipnodebyname(i8* %40, i32 %41, i32 0, i32* %18)
  store %struct.hostent* %42, %struct.hostent** %19, align 8
  %43 = load %struct.hostent*, %struct.hostent** %19, align 8
  %44 = icmp ne %struct.hostent* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @const_v4, align 4
  %50 = load %struct.hostent*, %struct.hostent** %19, align 8
  %51 = call i32 @add_hostent(i32 %46, i32 %47, i32 %48, %struct.addrinfo*** %14, i32 %49, %struct.hostent* %50, i32* %16)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.hostent*, %struct.hostent** %19, align 8
  %53 = call i32 @freehostent(%struct.hostent* %52)
  br label %54

54:                                               ; preds = %45, %39
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %57 = load %struct.addrinfo**, %struct.addrinfo*** %12, align 8
  store %struct.addrinfo* %56, %struct.addrinfo** %57, align 8
  %58 = load i32, i32* %17, align 4
  ret i32 %58
}

declare dso_local %struct.hostent* @getipnodebyname(i8*, i32, i32, i32*) #1

declare dso_local i32 @add_hostent(i32, i32, i32, %struct.addrinfo***, i32, %struct.hostent*, i32*) #1

declare dso_local i32 @freehostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
