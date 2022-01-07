; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_parse_pos_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_parse_pos_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@LUA_TNONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"arg %d wrong type (is '%s', expected '%s')\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"too many positional arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @zcp_parse_pos_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcp_parse_pos_args(i32* %0, i8* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %65, %4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @lua_type(i32* %20, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @LUA_TNONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %28, i8* %29, %struct.TYPE_6__* %30, %struct.TYPE_6__* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %64

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %35, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @lua_typename(i32* %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @lua_typename(i32* %53, i32 %59)
  %61 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %44, i8* %45, %struct.TYPE_6__* %46, %struct.TYPE_6__* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52, i32 %60)
  %62 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %43, %34
  br label %64

64:                                               ; preds = %63, %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %11

68:                                               ; preds = %11
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @lua_gettop(i32* %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %74, i8* %75, %struct.TYPE_6__* %76, %struct.TYPE_6__* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %68
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @lua_pushnil(i32* %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %81

95:                                               ; preds = %81
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @zcp_args_error(i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
