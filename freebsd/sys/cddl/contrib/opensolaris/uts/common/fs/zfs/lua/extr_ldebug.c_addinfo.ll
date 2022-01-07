; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_ldebug.c_addinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_ldebug.c_addinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@LUA_IDSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*)* @addinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addinfo(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @isLua(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load i32, i32* @LUA_IDSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @currentline(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_8__* @ci_func(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @getstr(i32* %32)
  %34 = load i32, i32* @LUA_IDSIZE, align 4
  %35 = call i32 @luaO_chunkid(i8* %20, i32 %33, i32 %34)
  br label %39

36:                                               ; preds = %16
  %37 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 63, i8* %37, align 16
  %38 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @luaO_pushfstring(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %41, i8* %42)
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  br label %45

45:                                               ; preds = %39, %2
  ret void
}

declare dso_local i64 @isLua(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @currentline(i32*) #1

declare dso_local %struct.TYPE_8__* @ci_func(i32*) #1

declare dso_local i32 @luaO_chunkid(i8*, i32, i32) #1

declare dso_local i32 @getstr(i32*) #1

declare dso_local i32 @luaO_pushfstring(%struct.TYPE_7__*, i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
