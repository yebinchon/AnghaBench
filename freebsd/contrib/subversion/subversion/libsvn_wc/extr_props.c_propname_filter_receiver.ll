; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_propname_filter_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_propname_filter_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propname_filter_baton_t = type { i32, i32 (i32, i8*, i32*, i32*)*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @propname_filter_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @propname_filter_receiver(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.propname_filter_baton_t*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.propname_filter_baton_t*
  store %struct.propname_filter_baton_t* %12, %struct.propname_filter_baton_t** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.propname_filter_baton_t*, %struct.propname_filter_baton_t** %9, align 8
  %15 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @svn_hash_gets(i32* %13, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @apr_hash_make(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.propname_filter_baton_t*, %struct.propname_filter_baton_t** %9, align 8
  %25 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @svn_hash_sets(i32* %23, i32 %26, i32* %27)
  %29 = load %struct.propname_filter_baton_t*, %struct.propname_filter_baton_t** %9, align 8
  %30 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %29, i32 0, i32 1
  %31 = load i32 (i32, i8*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*)** %30, align 8
  %32 = load %struct.propname_filter_baton_t*, %struct.propname_filter_baton_t** %9, align 8
  %33 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 %31(i32 %34, i8* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %40

40:                                               ; preds = %20, %4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
