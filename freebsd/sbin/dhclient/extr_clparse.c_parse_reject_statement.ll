; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_reject_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_reject_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_config = type { %struct.iaddrlist* }
%struct.iaddrlist = type { %struct.iaddrlist*, %struct.iaddr }
%struct.iaddr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"expecting IP address.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no memory for reject list!\00", align 1
@COMMA = common dso_local global i32 0, align 4
@SEMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"expecting semicolon.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_reject_statement(i32* %0, %struct.client_config* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.client_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iaddr, align 4
  %8 = alloca %struct.iaddrlist*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.client_config* %1, %struct.client_config** %4, align 8
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @parse_ip_addr(i32* %10, %struct.iaddr* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = call i32 @parse_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @skip_to_semi(i32* %15)
  br label %50

17:                                               ; preds = %9
  %18 = call %struct.iaddrlist* @malloc(i32 16)
  store %struct.iaddrlist* %18, %struct.iaddrlist** %8, align 8
  %19 = load %struct.iaddrlist*, %struct.iaddrlist** %8, align 8
  %20 = icmp ne %struct.iaddrlist* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.iaddrlist*, %struct.iaddrlist** %8, align 8
  %25 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %24, i32 0, i32 1
  %26 = bitcast %struct.iaddr* %25 to i8*
  %27 = bitcast %struct.iaddr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.client_config*, %struct.client_config** %4, align 8
  %29 = getelementptr inbounds %struct.client_config, %struct.client_config* %28, i32 0, i32 0
  %30 = load %struct.iaddrlist*, %struct.iaddrlist** %29, align 8
  %31 = load %struct.iaddrlist*, %struct.iaddrlist** %8, align 8
  %32 = getelementptr inbounds %struct.iaddrlist, %struct.iaddrlist* %31, i32 0, i32 0
  store %struct.iaddrlist* %30, %struct.iaddrlist** %32, align 8
  %33 = load %struct.iaddrlist*, %struct.iaddrlist** %8, align 8
  %34 = load %struct.client_config*, %struct.client_config** %4, align 8
  %35 = getelementptr inbounds %struct.client_config, %struct.client_config* %34, i32 0, i32 0
  store %struct.iaddrlist* %33, %struct.iaddrlist** %35, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @next_token(i8** %6, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @COMMA, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %9, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SEMI, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 @parse_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @skip_to_semi(i32* %48)
  br label %50

50:                                               ; preds = %13, %46, %42
  ret void
}

declare dso_local i32 @parse_ip_addr(i32*, %struct.iaddr*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local %struct.iaddrlist* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @next_token(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
