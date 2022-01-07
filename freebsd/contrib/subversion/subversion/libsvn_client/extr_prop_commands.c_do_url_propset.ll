; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_do_url_propset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_do_url_propset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i8*, i32*)*, i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)* }

@svn_node_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i64, i32, %struct.TYPE_3__*, i8*, i32*)* @do_url_propset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_url_propset(i8* %0, i8* %1, i32* %2, i64 %3, i32 %4, %struct.TYPE_3__* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)** %21, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 %22(i8* %23, i32 %24, i32* %25, i8** %17)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @svn_node_file, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i8* @svn_uri_basename(i8* %32, i32* %33)
  store i8* %34, i8** %19, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %36, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 %37(i8* %38, i8* %39, i32 %40, i32* %41, i8** %18)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %45, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 %46(i8* %47, i8* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %54, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 %55(i8* %56, i32* null, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %70

60:                                               ; preds = %8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %62, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 %63(i8* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %60, %31
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %72, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = call i32* %73(i8* %74, i32* %75)
  ret i32* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @svn_uri_basename(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
