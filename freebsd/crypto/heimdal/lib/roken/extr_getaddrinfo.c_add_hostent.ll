; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_add_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_add_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.hostent = type { i8**, i32, i32 }

@AI_CANONNAME = common dso_local global i32 0, align 4
@EAI_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.addrinfo***, i32 (%struct.addrinfo*, i8*, i32)*, %struct.hostent*, i32*)* @add_hostent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_hostent(i32 %0, i32 %1, i32 %2, %struct.addrinfo*** %3, i32 (%struct.addrinfo*, i8*, i32)* %4, %struct.hostent* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo***, align 8
  %13 = alloca i32 (%struct.addrinfo*, i8*, i32)*, align 8
  %14 = alloca %struct.hostent*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.hostent*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.addrinfo*** %3, %struct.addrinfo**** %12, align 8
  store i32 (%struct.addrinfo*, i8*, i32)* %4, i32 (%struct.addrinfo*, i8*, i32)** %13, align 8
  store %struct.hostent* %5, %struct.hostent** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %17, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AI_CANONNAME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %7
  store %struct.hostent* null, %struct.hostent** %19, align 8
  %29 = load %struct.hostent*, %struct.hostent** %14, align 8
  %30 = call i8* @hostent_find_fqdn(%struct.hostent* %29)
  store i8* %30, i8** %20, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = call i32* @strchr(i8* %31, i8 signext 46)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.hostent*, %struct.hostent** %14, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.hostent*, %struct.hostent** %14, align 8
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hostent*, %struct.hostent** %14, align 8
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.hostent* @getipnodebyaddr(i8* %39, i32 %42, i32 %45, i32* %21)
  store %struct.hostent* %46, %struct.hostent** %19, align 8
  %47 = load %struct.hostent*, %struct.hostent** %19, align 8
  %48 = icmp ne %struct.hostent* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %34
  %50 = load %struct.hostent*, %struct.hostent** %19, align 8
  %51 = call i8* @hostent_find_fqdn(%struct.hostent* %50)
  store i8* %51, i8** %22, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = call i32* @strchr(i8* %52, i8 signext 46)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i8*, i8** %22, align 8
  store i8* %56, i8** %20, align 8
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i8*, i8** %20, align 8
  %61 = call i8* @strdup(i8* %60)
  store i8* %61, i8** %17, align 8
  %62 = load %struct.hostent*, %struct.hostent** %19, align 8
  %63 = icmp ne %struct.hostent* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.hostent*, %struct.hostent** %19, align 8
  %66 = call i32 @freehostent(%struct.hostent* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i8*, i8** %17, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %71, i32* %8, align 4
  br label %112

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %7
  %74 = load %struct.hostent*, %struct.hostent** %14, align 8
  %75 = getelementptr inbounds %struct.hostent, %struct.hostent* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  store i8** %76, i8*** %18, align 8
  br label %77

77:                                               ; preds = %108, %73
  %78 = load i8**, i8*** %18, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.addrinfo***, %struct.addrinfo**** %12, align 8
  %86 = load i32 (%struct.addrinfo*, i8*, i32)*, i32 (%struct.addrinfo*, i8*, i32)** %13, align 8
  %87 = load i8**, i8*** %18, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @add_one(i32 %82, i32 %83, i32 %84, %struct.addrinfo*** %85, i32 (%struct.addrinfo*, i8*, i32)* %86, i8* %88, i8* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %8, align 4
  br label %112

95:                                               ; preds = %81
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AI_CANONNAME, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32, i32* @AI_CANONNAME, align 4
  %103 = xor i32 %102, -1
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %103
  store i32 %106, i32* %104, align 4
  store i8* null, i8** %17, align 8
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107
  %109 = load i8**, i8*** %18, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %18, align 8
  br label %77

111:                                              ; preds = %77
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %93, %70
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i8* @hostent_find_fqdn(%struct.hostent*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.hostent* @getipnodebyaddr(i8*, i32, i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @freehostent(%struct.hostent*) #1

declare dso_local i32 @add_one(i32, i32, i32, %struct.addrinfo***, i32 (%struct.addrinfo*, i8*, i32)*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
