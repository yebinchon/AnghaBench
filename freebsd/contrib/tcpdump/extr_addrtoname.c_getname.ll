; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32, i8*, %struct.hnamemem* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*)*, i64, i32 }
%struct.hostent = type { i32 }

@hnametable = common dso_local global %struct.hnamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@f_netmask = common dso_local global i32 0, align 4
@f_localnet = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"getname: strdup(hp->h_name)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"getname: strdup(intoa(addr))\00", align 1
@capdns = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getname(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnamemem*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @memcpy(i32* %7, i32* %10, i32 4)
  %12 = load %struct.hnamemem*, %struct.hnamemem** @hnametable, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HASHNAMESIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %12, i64 %17
  store %struct.hnamemem* %18, %struct.hnamemem** %8, align 8
  br label %19

19:                                               ; preds = %35, %2
  %20 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %21 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %20, i32 0, i32 2
  %22 = load %struct.hnamemem*, %struct.hnamemem** %21, align 8
  %23 = icmp ne %struct.hnamemem* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %26 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %32 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %120

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %37 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %36, i32 0, i32 2
  %38 = load %struct.hnamemem*, %struct.hnamemem** %37, align 8
  store %struct.hnamemem* %38, %struct.hnamemem** %8, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %42 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call %struct.hnamemem* @newhnamemem(%struct.TYPE_6__* %43)
  %45 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %46 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %45, i32 0, i32 2
  store %struct.hnamemem* %44, %struct.hnamemem** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %100, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @f_netmask, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @f_localnet, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = bitcast i32* %7 to i8*
  %59 = load i32, i32* @AF_INET, align 4
  %60 = call %struct.hostent* @gethostbyaddr(i8* %58, i32 4, i32 %59)
  store %struct.hostent* %60, %struct.hostent** %6, align 8
  %61 = load %struct.hostent*, %struct.hostent** %6, align 8
  %62 = icmp ne %struct.hostent* %61, null
  br i1 %62, label %63, label %99

63:                                               ; preds = %57
  %64 = load %struct.hostent*, %struct.hostent** %6, align 8
  %65 = getelementptr inbounds %struct.hostent, %struct.hostent* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @strdup(i32 %66)
  %68 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %69 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %71 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = call i32 %77(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %63
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %87 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strchr(i8* %88, i8 signext 46)
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** %9, align 8
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %92, %85
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %97 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %3, align 8
  br label %120

99:                                               ; preds = %57
  br label %100

100:                                              ; preds = %99, %51, %39
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @intoa(i32 %101)
  %103 = call i8* @strdup(i32 %102)
  %104 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %105 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %107 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = call i32 %113(%struct.TYPE_6__* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %100
  %117 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %118 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %3, align 8
  br label %120

120:                                              ; preds = %116, %95, %30
  %121 = load i8*, i8** %3, align 8
  ret i8* %121
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.hnamemem* @newhnamemem(%struct.TYPE_6__*) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @intoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
