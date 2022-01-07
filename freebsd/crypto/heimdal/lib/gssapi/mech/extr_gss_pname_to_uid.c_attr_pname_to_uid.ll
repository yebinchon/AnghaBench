; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_pname_to_uid.c_attr_pname_to_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_pname_to_uid.c_attr_pname_to_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_mechanism_name = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.passwd = type { i32 }

@GSS_S_UNAVAILABLE = common dso_local global i32 0, align 4
@GSS_C_ATTR_LOCAL_LOGIN_USER = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct._gss_mechanism_name*, i32*)* @attr_pname_to_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_pname_to_uid(i32* %0, %struct._gss_mechanism_name* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct._gss_mechanism_name*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct._gss_mechanism_name* %1, %struct._gss_mechanism_name** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @GSS_S_UNAVAILABLE, align 4
  store i32 %17, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %20 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)*, i32 (i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)** %22, align 8
  %24 = icmp eq i32 (i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @GSS_S_UNAVAILABLE, align 4
  store i32 %26, i32* %4, align 4
  br label %97

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %94, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %33 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)*, i32 (i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %39 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GSS_C_ATTR_LOCAL_LOGIN_USER, align 4
  %42 = call i32 %36(i32* %37, i32 %40, i32 %41, i32* %13, i32* %14, %struct.TYPE_6__* %11, %struct.TYPE_6__* %12, i32* %10)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @GSS_ERROR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %48 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @_gss_mg_error(%struct.TYPE_7__* %49, i32 %50, i32 %52)
  br label %95

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i8* @malloc(i32 %57)
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  br label %95

65:                                               ; preds = %54
  %66 = load i8*, i8** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i8* %66, i32 %68, i32 %70)
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %16, align 8
  %78 = call %struct.passwd* @getpwnam(i8* %77)
  store %struct.passwd* %78, %struct.passwd** %15, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @free(i8* %79)
  %81 = call i32 @gss_release_buffer(i32* %9, %struct.TYPE_6__* %11)
  %82 = call i32 @gss_release_buffer(i32* %9, %struct.TYPE_6__* %12)
  %83 = load %struct.passwd*, %struct.passwd** %15, align 8
  %84 = icmp ne %struct.passwd* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  %86 = load %struct.passwd*, %struct.passwd** %15, align 8
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 0, i32* %91, align 4
  br label %95

92:                                               ; preds = %65
  %93 = load i32, i32* @GSS_S_UNAVAILABLE, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %92
  br label %28

95:                                               ; preds = %85, %61, %46, %28
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %25
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @_gss_mg_error(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
